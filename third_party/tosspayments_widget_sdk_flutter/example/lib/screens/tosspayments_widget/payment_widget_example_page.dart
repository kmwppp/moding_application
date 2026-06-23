import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tosspayments_widget_sdk_flutter/model/agreement_status.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/model/selected_payment_method.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

import '../../components.dart';
import '../../utils/toast.dart';
import '../result.dart';
import 'widget_home.dart';

class PaymentWidgetExamplePage extends StatefulWidget {
  final UIState info;
  final PaymentInfo data;

  const PaymentWidgetExamplePage({super.key, required this.data, required this.info});

  @override
  State<PaymentWidgetExamplePage> createState() {
    return _PaymentWidgetExamplePageState();
  }
}

class _PaymentWidgetExamplePageState extends State<PaymentWidgetExamplePage> {
  SelectedPaymentMethod? selectedPaymentMethod;
  AgreementStatus? agreementStatus;

  UIState get info => widget.info;

  PaymentInfo get data => widget.data;

  late PaymentWidget _paymentWidget;
  PaymentMethodWidgetControl? _paymentMethodWidgetControl;
  AgreementWidgetControl? _agreementWidgetControl;

  // 가맹점 앱스킴(`example://...`) 으로 들어오는 intent 를 받기 위한
  // app_links 구독 핸들. SDK 가 아니라 **가맹점 측**에서 갖고 있어야 한다.
  // (SDK 가 대신 구독하면 가맹점 기존 딥링크 처리와 충돌하기 때문)
  final AppLinks _appLinks = AppLinks();

  // listen() 반환값을 보관해야 dispose 에서 cancel 할 수 있다.
  // 보관하지 않으면 페이지가 사라진 뒤에도 콜백이 살아남아
  // 메모리/로직 누수가 발생한다.
  StreamSubscription<Uri>? _linkSub;

  @override
  void initState() {
    super.initState();

    /// PaymentWidget 객체를 초기화합니다.
    _paymentWidget = PaymentWidget(
        clientKey: info.clientKey,
        customerKey: info.customerKey,
        paymentWidgetOptions: PaymentWidgetOptions(brandPayOption: BrandPayOption(info.redirectUrl ?? "")));

    // 엔텀/알리페이 등 외부 결제 앱에서 `{가맹점앱스킴}://?url=...` 형태로
    // 복귀할 때 intent 를 수신한다. 가맹점 책임은 여기까지만: url 을 꺼내
    // SDK 에 넘기면, 이후 웹뷰 연결/무시 판단은 PaymentWidget 이 처리한다.
    _linkSub = _appLinks.uriLinkStream.listen((uri) {
      final redirect = uri.queryParameters['url'];
      debugPrint('[example] app link received: scheme=${uri.scheme}, hasRedirect=${redirect?.isNotEmpty == true}');
      if (redirect != null && redirect.isNotEmpty) {
        _paymentWidget.handlePaymentRedirect(redirect);
      }
    });

    /// [renderPaymentMethods] 함수로 결제수단 위젯을 렌더링합니다.
    _paymentWidget
        .renderPaymentMethods(
            selector: 'methods',
            amount: Amount(value: info.amount, currency: info.currency, country: info.country),
            options: RenderPaymentMethodsOptions(variantKey: info.variantKeyMethod ?? ""))
        .then((control) {
      /// 렌더링 성공 시 [PaymentMethodWidgetControl] 객체를 반환합니다.
      _paymentMethodWidgetControl = control;
    }, onError: (fail) {
      /// 잘못된 클라이언트 키 입력 등의 이유로 렌더링 실패 시 [Fail] 객체를 반환합니다.
      Get.offAndToNamed("/result", arguments: fail);
      return;
    });

    /// [renderAgreement] 함수로 약관 위젯을 렌더링합니다.
    _paymentWidget
        .renderAgreement(
            selector: 'agreement', options: RenderAgreementOptions(variantKey: info.variantKeyAgreement ?? ""))
        .then((control) {
      /// 렌더링 성공 시 [AgreementWidgetControl] 객체를 반환합니다.
      _agreementWidgetControl = control;
    }, onError: (fail) {
      /// 잘못된 클라이언트 키 입력 등의 이유로 렌더링 실패 시 [Fail] 객체를 반환합니다.
      Get.offAndToNamed("/result", arguments: fail);
      return;
    });
  }

  @override
  void dispose() {
    // 결제 페이지가 사라질 때 구독도 함께 끊어야 한다.
    // cancel 을 빼먹으면 페이지가 제거된 뒤에도 콜백이 죽은 State 를 참조해
    // 호출되거나 GC 가 걸리지 않는다.
    _linkSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  /// UI 상에서 원하는 위치에 PaymentMethodWidget 위젯을 추가합니다.
                  PaymentMethodWidget(
                    paymentWidget: _paymentWidget,
                    selector: 'methods',
                    onCustomRequested: (key) {
                      toast(context, 'onCustomRequested', key);
                    },
                    onCustomPaymentMethodSelected: (key) {
                      toast(context, 'onCustomPaymentMethodSelected', key);
                    },
                    onCustomPaymentMethodUnselected: (key) {
                      toast(context, 'onCustomPaymentMethodUnselected', key);
                    },
                  ),
                  Container(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          BlueButton(
                            onPressed: () async {
                              /// [PaymentMethodWidgetControl]의 [getSelectedPaymentMethod] 함수로 현재 고객이 선택한 결제 수단을 구합니다.
                              final selected = await _paymentMethodWidgetControl?.getSelectedPaymentMethod();
                              setState(() {
                                selectedPaymentMethod = selected;
                              });
                            },
                            text:
                                '(클릭시 갱신) 선택한 결제수단 : ${selectedPaymentMethod?.method} ${selectedPaymentMethod?.easyPay?.provider ?? ''}',
                          ),
                          const SizedBox(height: 20),
                          BlueButton(
                            onPressed: () async {
                              /// [AgreementWidgetControl]의 [getAgreementStatus] 함수로 약관 동의 상태를 구합니다.
                              var status = await _agreementWidgetControl?.getAgreementStatus();
                              setState(() {
                                agreementStatus = status;
                              });
                            },
                            text: '(클릭시 갱신) 약관 동의 상태 : ${agreementStatus?.toString()}',
                          ),
                        ],
                      )),

                  /// UI 상에서 원하는 위치에 AgreementWidget 위젯을 추가합니다.
                  AgreementWidget(
                    paymentWidget: _paymentWidget,
                    selector: 'agreement',
                    onChange: (status) {
                      toast(context, 'agreed', status.agreedRequiredTerms.toString());
                    },
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(24),
                child: Row(
                  children: [
                    Expanded(
                        child: BlueButton(
                            onPressed: () {
                              _showNumberInputDialog(context, (int newAmount) {
                                /// [PaymentMethodWidgetControl]의 [updateAmount] 함수로 결제 금액을 변경할 수 있습니다.
                                _paymentMethodWidgetControl?.updateAmount(amount: newAmount).then((_) {
                                  toast(context, 'updateAmount', '결제 금액이 $newAmount원으로 변경되었습니다.');
                                });
                              });
                            },
                            text: '금액변경')),
                    const SizedBox(width: 20),
                    Expanded(
                        child: BlueButton(
                            onPressed: () async {
                              if (_agreementWidgetControl == null || _paymentMethodWidgetControl == null) {
                                toast(context, 'requestPayment', '결제위젯이 렌더링되지 않았습니다.');
                                return;
                              }

                              final agreement = await _agreementWidgetControl?.getAgreementStatus();
                              if (agreement?.agreedRequiredTerms != true) {
                                if (!mounted) return;
                                toast(context, 'requestPayment', '필수 약관에 모두 동의하지 않았습니다.');
                                return;
                              }

                              /// [PaymentWidget]의 [requestPayment] 함수를 통해 결제창으로 이동합니다.
                              final Result paymentResult = await _paymentWidget.requestPayment(paymentInfo: data);
                              if (paymentResult.success != null) {
                                /// 결제가 성공적으로 완료되었을 경우 [Success] 객체를 [Result]에 담아 반환합니다.
                                Get.back(result: paymentResult.success);
                              } else if (paymentResult.pending != null) {
                                /// 해외 간편결제 등 승인 대기 상태일 경우 [Pending] 객체를 [Result]에 담아 반환합니다.
                                Get.back(result: paymentResult.pending);
                              } else if (paymentResult.fail != null) {
                                /// 결제에 실패하였거나 결제가 취소되었을 경우 [Fail] 객체를 [Result]에 담아 반환합니다.
                                Get.to(() => const ResultPage(), arguments: paymentResult.fail);
                              }
                            },
                            text: '결제하기')),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

void _showNumberInputDialog(
  BuildContext context,
  void Function(int) onConfirm,
) {
  TextEditingController controller = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('변경할 금액 입력'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: '숫자를 입력하세요'),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('취소'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('확인'),
            onPressed: () {
              String inputText = controller.text;
              if (inputText.isNotEmpty) {
                int? number = int.tryParse(inputText);
                if (number != null) {
                  onConfirm(number);
                  Navigator.of(context).pop();
                } else {
                  toast(context, 'updateAmount', '올바른 값을 입력해 주세요.');
                }
              } else {
                toast(context, 'updateAmount', '올바른 값을 입력해 주세요.');
              }
            },
          ),
        ],
      );
    },
  );
}
