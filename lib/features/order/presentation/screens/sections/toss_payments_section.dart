import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/network/exceptions/api_code_exception.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/providers/providers.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/alcohol_purchase_flow.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/core/utils/order_util.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/order/domain/enums/pg_provider.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

class TossPaymentSection extends ConsumerWidget {
  const TossPaymentSection({
    super.key,
    required this.onValidateAgreement,
    required this.onConfirmingPaymentChanged,
    required this.isPaymentStarting,
    required this.onPaymentStartingChanged,
    required this.pgProvider,
    required this.customerName,
  });

  final Future<bool> Function() onValidateAgreement;
  final ValueChanged<bool> onConfirmingPaymentChanged;
  final bool isPaymentStarting;
  final ValueChanged<bool> onPaymentStartingChanged;
  final PgProvider pgProvider;
  final String customerName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentWidget = ref.watch(paymentWidgetProvider);

    final notifier = ref.read(orderViewModelProvider.notifier);

    final orderInfo = ref.watch(
      orderViewModelProvider.select((state) => state.orderInfo),
    );

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ===== 결제수단 =====
          RepaintBoundary(
            child: PaymentMethodWidget(
              paymentWidget: paymentWidget,
              selector: 'methods',
            ),
          ),

          // ===== 약관 =====
          RepaintBoundary(
            child: AgreementWidget(
              paymentWidget: paymentWidget,
              selector: 'agreement',
            ),
          ),

          // ===== 결제 버튼 =====
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: isPaymentStarting
                  ? null
                  : () => _startPaymentFlow(
                      context,
                      ref,
                      paymentWidget,
                      notifier,
                      orderInfo?.productName ?? '주문상품',
                    ),
              child: CustomButton(
                title:
                    "${StringUtil.formatCurrency(orderInfo?.totalAmount ?? 0)}원 결제하기",
                boxColor: AppColors.primary,
                textColor: Colors.white,
                paddingVertical: 10,
                textStyle: context.bodyLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _startPaymentFlow(
    BuildContext context,
    WidgetRef ref,
    dynamic paymentWidget,
    OrderViewModel notifier,
    String orderName,
  ) async {
    if (isPaymentStarting) return;

    final canProceed = await onValidateAgreement();
    if (!canProceed) return;

    onPaymentStartingChanged(true);

    try {
      final createOrderResponse = await notifier.postCreateOrder(
        idempotencyKey: OrderUtil.idempotencyKey(),
        pgProvider: pgProvider,
      );

      if (createOrderResponse.success && createOrderResponse.data != null) {
        final paymentCode =
            createOrderResponse.data?.payment?.paymentCode ?? '';

        if (paymentCode.isEmpty) {
          if (!context.mounted) return;

          CommonDialog.show(
            context,
            title: "오류",
            isSuccess: false,
            message: "결제 요청 정보를 불러오지 못했습니다.",
          );
          return;
        }

        final paymentResult = await paymentWidget.requestPayment(
          paymentInfo: PaymentInfo(
            orderId: paymentCode,
            orderName: orderName,
            customerName: customerName,
            useEscrow: false,
          ),
        );

        if (paymentResult.success != null) {
          final success = paymentResult.success!;
          appLog(
            '[PaymentsConfirm] toss success -> paymentKey=${success.paymentKey}, orderId=${success.orderId}, amount=${success.amount}',
          );

          onConfirmingPaymentChanged(true);
          final confirmResponse = await notifier.postPaymentsConfirm(
            paymentKey: success.paymentKey,
            paymentCode: success.orderId,
            amount: success.amount.toInt(),
          );

          onConfirmingPaymentChanged(false);
          if (!context.mounted) return;

          if (confirmResponse != null) {
            appLog(
              '[PaymentsConfirm] toss confirm success -> paymentId=${confirmResponse.data.paymentId}',
            );
            context.pushReplacement(
              '/payment_complete/${confirmResponse.data.paymentId}',
            );
          } else {
            appLog('[PaymentsConfirm] toss confirm returned null');
            CommonDialog.show(
              context,
              title: "오류",
              isSuccess: false,
              message: "결제 승인 처리에 실패했습니다.",
            );
          }
        } else if (paymentResult.pending != null) {
          final pending = paymentResult.pending!;
          appLog('결제 승인 대기: ${pending.paymentKey}');

          if (!context.mounted) return;

          CommonDialog.show(
            context,
            title: "결제 대기",
            isSuccess: false,
            message: "결제 승인 대기 상태입니다. 잠시 후 다시 확인해주세요.",
          );
        } else if (paymentResult.fail != null) {
          final fail = paymentResult.fail!;
          appLog('결제 실패: ${fail.errorCode}');
          appLog('에러 메시지: ${fail.errorMessage}');

          await notifier.postPaymentsFail(
            paymentCode: fail.orderId,
            errorCode: fail.errorCode,
            errorMessage: fail.errorMessage,
          );

          if (!context.mounted) return;

          CommonDialog.show(
            context,
            title: "결제 실패",
            isSuccess: false,
            message: fail.errorMessage,
          );
        }
      } else {
        if (!context.mounted) return;

        CommonDialog.show(
          context,
          title: "오류",
          isSuccess: false,
          message: "일시적인 오류로 결제를 다시 요청해주세요.",
        );
      }
    } on ApiCodeException catch (exception) {
      onPaymentStartingChanged(false);
      if (!context.mounted) return;
      await handleAlcoholPurchaseException(
        context,
        ref,
        exception,
        failureBehavior: AlcoholFailureBehavior.stay,
        onVerified: () =>
            _startPaymentFlow(context, ref, paymentWidget, notifier, orderName),
      );
    } finally {
      onPaymentStartingChanged(false);
    }
  }
}
