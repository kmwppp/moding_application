import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/utils/date_time_util.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/payment_complete/domain/enums/payment_complete_status.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/enums/payment_complete_method.dart';
import '../widgets/payment_complete_common_box.dart';
import '../widgets/payment_ratio_row.dart';

class OrderInfoSection extends ConsumerWidget {
  const OrderInfoSection({super.key, required this.paymentId});

  final int paymentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentCompleteViewModelProvider(paymentId));
    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "주문이 정상적으로 접수되었습니다.",
            style: context.titleMedium.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("결제정보", style: context.titleMedium),

              if (state.paymentInfo?.data.paymentMethod ==
                  PaymentCompleteMethod.card) ...[
                SizedBox(height: 10),
                PaymentRatioRow(
                  title: "결제상태",
                  content: state.paymentInfo?.data.status.label ?? "",
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    PaymentRatioRow(
                      title: "카드",
                      content: _formatCardType(
                        state.paymentInfo?.data.cardType,
                      ),
                    ),
                    PaymentRatioRow(
                      title: "카드사",
                      content: state.paymentInfo?.data.cardName ?? "",
                    ),
                    PaymentRatioRow(
                      title: "카드 번호",
                      content: state.paymentInfo?.data.cardNum ?? "",
                    ),
                    if ((state.paymentInfo?.data.cardQuote ?? 0) > 0)
                      PaymentRatioRow(
                        title: "할부개월",
                        content: "${state.paymentInfo?.data.cardQuote}개월",
                      ),
                    PaymentRatioRow(
                      title: "무이자 여부",
                      content: _formatInterestFree(
                        state.paymentInfo?.data.isInterestFree,
                      ),
                    ),
                    PaymentRatioRow(
                      title: "승인일자",
                      content: state.paymentInfo?.data.paidAt?.toDateOnly ?? "",
                    ),
                    PaymentRatioRow(
                      title: "결제수단",
                      content:
                          state.paymentInfo?.data.paymentMethod.label ?? "",
                    ),
                    PaymentRatioRow(
                      title: "승인번호",
                      content: state.paymentInfo?.data.approvalNumber ?? "",
                    ),
                  ],
                ),
              ] else ...[
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PaymentRatioRow(
                      title: "결제상태",
                      content: state.paymentInfo?.data.status.label ?? "",
                    ),
                    PaymentRatioRow(
                      title: "결제수단",
                      content:
                          state.paymentInfo?.data.paymentMethod.label ?? "",
                    ),
                    SizedBox(height: 10),
                    if (state.paymentInfo!.data.status ==
                        PaymentCompleteStatus.pending) ...[
                      Text(
                        "[입금안내]",
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      PaymentRatioRow(
                        title: "은행",
                        content: state.paymentInfo?.data.vbankName ?? "",
                      ),
                      PaymentRatioRow(
                        title: "계좌번호",
                        content: state.paymentInfo?.data.vbankNumber ?? "",
                      ),
                      PaymentRatioRow(
                        title: "예금주",
                        content: state.paymentInfo?.data.vbankHolder ?? "",
                      ),
                      PaymentRatioRow(
                        title: "입금기한",
                        content:
                            "${StringUtil.formatDate(state.paymentInfo?.data.vbankExpDate?.toDataAndTimeNoLineBreak ?? "20260325235959")}까지",
                        isContentPoint: true,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "입금 확인 후 주문이 확정되며, 미입금 시 자동 취소됩니다.",
                        style: context.body.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  String _formatCardType(String? cardType) {
    switch (cardType?.toLowerCase()) {
      case 'credit':
        return '신용카드';
      case 'check':
        return '체크(직불)카드';
      case 'gift':
        return '기프트카드';
      default:
        return '-';
    }
  }

  String _formatInterestFree(bool? isInterestFree) {
    if (isInterestFree == null) return '-';
    return isInterestFree ? '무이자' : '일반';
  }
}
