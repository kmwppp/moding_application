import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppPdfViewerPage extends StatefulWidget {
  final String url;
  final String title;

  const AppPdfViewerPage({super.key, required this.url, required this.title});

  @override
  State<AppPdfViewerPage> createState() => _AppPdfViewerPageState();
}

class _AppPdfViewerPageState extends State<AppPdfViewerPage> {
  late final WebViewController controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) {
            setState(() => isLoading = false);
          },
        ),
      )
      ..loadRequest(Uri.parse(_pdfViewerUrl(widget.url)));
  }

  /// 🔥 구글 PDF 뷰어 사용 (가장 안정적)
  String _pdfViewerUrl(String url) {
    return "https://docs.google.com/gview?embedded=true&url=$url";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
