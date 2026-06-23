Flutter에서 토스페이먼츠 결제위젯을 손쉽게 연동하기 위한 패키지입니다.

## 1. 사전 설정

### 요구 사항
- Flutter 3.7.0 이상 / Dart SDK 2.17.0 이상
- Android minSdkVersion 19 이상

### A. 패키지 다운로드
pubspec.yaml에 패키지 추가 
```xml
dependencies:
tosspayments_widget_sdk_flutter: ^2.2.0
```

### B. Android 설정
인터넷 권한을 부여하고, usesCleartextTraffic 세팅을 true로 설정하여 웹뷰 내 모든 카드사앱을 띄울 수 있도록 설정
```xml
<!-- android/app/main/AndroidManifest.xml -->
    ...
    <uses-permission android:name="android.permission.INTERNET" />
    <appication
        ...
        android:usesCleartextTraffic="true">
    </application>
    ...
```

## 2. 시작하기
아래 방법으로 토스페이먼츠 결제 위젯을 띄울 수 있습니다. 자세한 내용은 예제(example)을 참고해 주세요.

```dart
import 'package:flutter/material.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaymentWidgetExamplePage(),
    );
  }
}

class PaymentWidgetExamplePage extends StatefulWidget {
  const PaymentWidgetExamplePage({super.key});

  @override
  State<PaymentWidgetExamplePage> createState() {
    return _PaymentWidgetExamplePageState();
  }
}

class _PaymentWidgetExamplePageState extends State<PaymentWidgetExamplePage> {
  late PaymentWidget _paymentWidget;
  PaymentMethodWidgetControl? _paymentMethodWidgetControl;
  AgreementWidgetControl? _agreementWidgetControl;

  @override
  void initState() {
    super.initState();

    _paymentWidget = PaymentWidget(clientKey: "test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm", customerKey: "a1b2c3d4e5f67890");

    _paymentWidget
        .renderPaymentMethods(
        selector: 'methods',
        amount: Amount(value: 300, currency: Currency.KRW, country: "KR"))
        .then((control) {
      _paymentMethodWidgetControl = control;
    });

    _paymentWidget
        .renderAgreement(selector: 'agreement')
        .then((control) {
      _agreementWidgetControl = control;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
              Expanded(
                  child: ListView(children: [
                    PaymentMethodWidget(
                      paymentWidget: _paymentWidget,
                      selector: 'methods',
                    ),
                    AgreementWidget(paymentWidget: _paymentWidget, selector: 'agreement'),
                    ElevatedButton(
                        onPressed: () async {
                          final paymentResult = await _paymentWidget.requestPayment(
                              paymentInfo: const PaymentInfo(orderId: 'OrderId_123', orderName: '파란티셔츠 외 2건'));
                          if (paymentResult.success != null) {
                            // 결제 성공 처리
                          } else if (paymentResult.pending != null) {
                            // 결제 승인 대기 처리 (예: 중국/동남아 간편결제)
                          } else if (paymentResult.fail != null) {
                            // 결제 실패 처리
                          }
                        },
                        child: const Text('결제하기')),
                    ElevatedButton(
                        onPressed: () async {
                          final selectedPaymentMethod = await _paymentMethodWidgetControl?.getSelectedPaymentMethod();
                          print('${selectedPaymentMethod?.method} ${selectedPaymentMethod?.easyPay?.provider ?? ''}');
                        },
                        child: const Text('선택한 결제수단 출력')),
                    ElevatedButton(
                        onPressed: () async {
                          final agreementStatus = await _agreementWidgetControl?.getAgreementStatus();
                          print('${agreementStatus?.agreedRequiredTerms}');
                        },
                        child: const Text('약관 동의 상태 출력')),
                    ElevatedButton(
                        onPressed: () async {
                          await _paymentMethodWidgetControl?.updateAmount(amount: 300);
                          print('결제 금액이 300원으로 변경되었습니다.');
                        },
                        child: const Text('결제 금액 변경'))
                  ]))
            ])));
  }
}
```
## 3. 엔텀(Ant/Alipay) 등 앱 연동 결제 리다이렉트 처리

엔텀(Ant/Alipay)과 같은 중국/동남아 간편결제는 결제 진행 중 외부 결제 앱(Alipay 등)으로 이동했다가, 결제 완료 후 `{가맹점앱스킴}://?url={paymentRedirectUrl}` 형태의 앱스킴으로 가맹점 앱에 복귀합니다. 이 흐름을 지원하려면 가맹점 앱에서 다음 3가지를 처리해야 합니다.

1. **`PaymentInfo.appScheme` 지정**: `requestPayment` 호출 시 `PaymentInfo` 객체의 `appScheme` 필드를 가맹점 앱의 앱 스킴(예: `example://`)으로 채워 주세요. Android/iOS 공통이며, 외부 결제 앱에서 가맹점 앱으로 복귀할 때의 앱 스킴으로 사용됩니다.
2. **앱 스킴 수신 처리**: 외부 결제 앱은 `{appScheme}?url={paymentRedirectUrl}` 형태로 가맹점 앱을 호출합니다. SDK는 가맹점 앱 고유의 앱스킴 처리 로직과 충돌하지 않도록 이 앱스킴을 직접 가로채지 않으므로, 가맹점 앱이 직접 수신해야 합니다.
3. **`handlePaymentRedirect` 호출**: 수신한 앱스킴의 `url` 쿼리 파라미터를 추출해 `PaymentWidget.handlePaymentRedirect`에 전달하세요. 이미 떠 있는 결제창 웹뷰가 해당 URL을 로드해 결제 후처리를 이어갑니다. example 앱은 `example://` 스킴을 사용합니다.

```dart
// 1) 결제 요청 시 appScheme 지정
_paymentWidget.requestPayment(
  paymentInfo: PaymentInfo(
    orderId: orderId,
    orderName: orderName,
    appScheme: 'example://', // 가맹점 앱의 앱 스킴
  ),
);

// 2) 3) 가맹점 앱 측 앱스킴 수신 후 handlePaymentRedirect 로 전달
void onAppSchemeReceived(Uri incoming) {
  final redirect = incoming.queryParameters['url'];
  if (redirect != null) {
    _paymentWidget.handlePaymentRedirect(redirect);
  }
}
```

활성 결제창이 없을 때 호출하면 조용히 무시되며 디버그 로그만 남습니다.

## * 연동 관련 문의사항
 디스코드로 찾아오시면 실시간 채팅으로 궁금한 점을 해결하실 수 있습니다. ([디스코드 링크](https://discord.gg/tosspayments)) 
