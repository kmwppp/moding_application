import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../utils/nested_vertical_gesture_recognizer.dart';
import 'javascript_channel.dart';

class TosspaymentsInAppWebview extends StatefulWidget {
  final String _initialHtmlString;
  final String? domain;
  final Future<bool> Function(String) _handleOverrideUrl;
  final Set<JavascriptChannel>? _baseJavascriptChannel;
  final bool _gestureEnabled;

  const TosspaymentsInAppWebview({
    Key? key,
    required String initialHtml,
    required Future<bool> Function(String) handleOverrideUrl,
    this.domain,
    Set<JavascriptChannel>? baseJavascriptChannel,
    bool gestureEnabled = false,
  })  : _baseJavascriptChannel = baseJavascriptChannel,
        _handleOverrideUrl = handleOverrideUrl,
        _initialHtmlString = initialHtml,
        _gestureEnabled = gestureEnabled,
        super(key: key);

  @override
  TosspaymentsInAppWebviewState createState() => TosspaymentsInAppWebviewState();
}

class TosspaymentsInAppWebviewState extends State<TosspaymentsInAppWebview> with AutomaticKeepAliveClientMixin {
  InAppWebViewController? _webviewController;
  final Completer<void> _onPageFinishedCompleter = Completer<void>();
  final Map<String, JavascriptChannel> _javaScriptInterfaces = {};
  var gestureRecognizer = NestedVerticalScrollGestureRecognizer();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InAppWebView(
      onLoadResourceWithCustomScheme: (controller, url) async {
        List<String> prefixes = ["intent", "market"];
        RegExp regExp = RegExp("^(${prefixes.map(RegExp.escape).join('|')})");
        if (regExp.hasMatch(url.url.rawValue)) {
          await _webviewController?.stopLoading();
          return null;
        } else {
          // custom scheme이 더 생기면 분기 추가해 가기
          return null;
        }
      },
      onScrollChanged: (controller, x, y) {
        gestureRecognizer.scrollY = y;
      },
      gestureRecognizers: widget._gestureEnabled ? {Factory(() => gestureRecognizer)} : {},
      onWebViewCreated: (controller) {
        _webviewController = controller;
        _webviewController?.setSettings(
            settings: InAppWebViewSettings(
                allowsBackForwardNavigationGestures: false,
                useShouldOverrideUrlLoading: true,
                useOnDownloadStart: true,
                resourceCustomSchemes: ['intent', 'market']));
        addJavascriptChannels(widget._baseJavascriptChannel ?? {});
        evaluateJavascript(bridgeScript);
        _webviewController?.addJavaScriptHandler(
            handlerName: 'PaymentWidgetFlutterSDK',
            callback: (args) {
              final message = json.decode(args[0]);
              final name = message['name'];
              final params = message['params'];

              _javaScriptInterfaces[name]?.onReceived(params);
            });

        if (Platform.isIOS) {
          // safari에서 히스토리가 쌓이지 않아 뒤로가기가 먹통인 현상 해결
          _webviewController?.loadUrl(urlRequest: URLRequest(url: WebUri.uri(Uri.parse('about:blank'))));
        }
        if (widget.domain == null) {
          _webviewController?.loadUrl(
              urlRequest: URLRequest(
                  url: WebUri.uri(Uri.parse(Uri.dataFromString(widget._initialHtmlString,
                          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
                      .toString()))));
        } else {
          _webviewController?.loadData(
            data: widget._initialHtmlString,
            baseUrl: widget.domain == null ? null : WebUri.uri(Uri.parse('https://${widget.domain}/')),
          );
        }
      },
      onLoadStop: (controller, url) {
        if (url.toString() == 'about:blank') {
          return;
        }
        if (!_onPageFinishedCompleter.isCompleted) {
          _onPageFinishedCompleter.complete();
        }
      },
      onDownloadStartRequest: (controller, request) async {
        await launchUrlString(request.url.rawValue, mode: LaunchMode.externalApplication);
      },
      shouldOverrideUrlLoading: (controller, request) async {
        final requestWebUri = request.request.url;
        if (requestWebUri == null) {
          return NavigationActionPolicy.CANCEL;
        }

        // NOTE(@JooYang): 반드시 rawValue 를 사용해야 한다 @see https://www.notion.so/tossteam/SDK-v3Mobile-12ea360d33e380d8b6a9e17138fc65ce?pvs=4
        var handled = await widget._handleOverrideUrl(requestWebUri.rawValue);
        if (handled) {
          return NavigationActionPolicy.CANCEL;
        } else {
          return NavigationActionPolicy.ALLOW;
        }
      },
    );
  }

  void evaluateJavascript(String script) async {
    if (_onPageFinishedCompleter.isCompleted) {
      _webviewController?.evaluateJavascript(source: script);
    } else {
      await _onPageFinishedCompleter.future.then((_) => _webviewController?.evaluateJavascript(source: script) ?? '');
    }
  }

  void addJavascriptChannels(Set<JavascriptChannel> channels) {
    for (var channel in channels) {
      _javaScriptInterfaces[channel.name] = channel;
    }
  }

  /// 이미 떠 있는 이 웹뷰 인스턴스의 현재 페이지를 주어진 URL 로 교체한다.
  ///
  /// 엔텀(Ant/Alipay) 등 앱 연동 결제 복귀 시, 새 웹뷰를 띄우는 대신
  /// **진행 중인 결제 세션을 유지한 채** 같은 웹뷰에서 이어서 URL 만 바꿔
  /// 결제 후처리로 넘어가기 위한 훅이다.
  ///
  /// 컨트롤러가 아직 attach 되지 않았다면 호출은 조용히 무시된다.
  void loadUrl(String url) {
    final controller = _webviewController;
    if (controller == null) {
      return;
    }
    controller.loadUrl(
      urlRequest: URLRequest(url: WebUri.uri(Uri.parse(url))),
    );
  }

  @override
  bool get wantKeepAlive => true;

  static const bridgeScript = '''
    window.PaymentWidgetFlutterSDK = {
      message : {
        postMessage : function(_message) {
          window.flutter_inappwebview.callHandler('PaymentWidgetFlutterSDK', _message);
        }
      },
      error : {
        postMessage : function(error) {
          window.flutter_inappwebview.callHandler('PaymentWidgetFlutterSDK', JSON.stringify({
            name: 'error', 
            params: JSON.parse(error)
          }));
        }
      }
    }
''';
}
