import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../../domain/entities/order_detail_dto.dart';
import '../../../domain/enums/order_payment_method.dart';
import '../../../domain/enums/order_payment_status.dart';
import '../../providers/order_check_viewmodel.dart';

class PaymentInfoSection extends ConsumerWidget {
  PaymentInfoSection({super.key});

  final NumberFormat _amountFormat = NumberFormat('#,###', 'ko_KR');
  final DateFormat _dateTimeFormat = DateFormat('yyyy.MM.dd HH:mm');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderCheckViewModelProvider);
    final payment = state.orderDetail?.data.payment;

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "결제정보",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 14),
          if (state.isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            )
          else if (payment != null) ...[
            _PaymentInfoRow(label: '결제수단', value: payment.paymentMethod.label),
            _PaymentInfoRow(label: '결제 상태', value: payment.status.label),
            ..._buildPaymentRows(payment),
            _PaymentInfoRow(
              label: '총 결제금액',
              value: _formatAmount(payment.netAmount),
            ),
          ],
        ],
      ),
    );
  }

  List<Widget> _buildPaymentRows(OrderDetailPaymentDto payment) {
    final method = payment.paymentMethod;
    final status = payment.status;
    final rows = <Widget>[];

    if (method == OrderPaymentMethod.card) {
      rows.add(
        _PaymentInfoRow(label: '카드', value: _formatCardType(payment.cardType)),
      );
      rows.add(_PaymentInfoRow(label: '카드사', value: payment.cardName ?? '-'));
      rows.add(_PaymentInfoRow(label: '카드 번호', value: payment.cardNum ?? '-'));
      if ((payment.cardQuota ?? 0) > 0) {
        rows.add(
          _PaymentInfoRow(label: '할부개월', value: '${payment.cardQuota}개월'),
        );
      }
      rows.add(
        _PaymentInfoRow(
          label: '무이자 여부',
          value: _formatInterestFree(payment.isInterestFree),
        ),
      );

      if (status != OrderPaymentStatus.pending) {
        rows.add(
          _PaymentInfoRow(
            label: '승인일자',
            value: _formatDateTime(payment.paidAt),
          ),
        );
        rows.add(
          _PaymentInfoRow(label: '승인번호', value: payment.approvalNumber ?? '-'),
        );
      }

      if (status == OrderPaymentStatus.partiallyCancelled ||
          status == OrderPaymentStatus.cancelled) {
        rows.add(
          _PaymentInfoRow(
            label: '취소금액',
            value: _formatAmount(payment.cancelledAmount),
          ),
        );
      } else if (status == OrderPaymentStatus.refunded) {
        rows.add(
          _PaymentInfoRow(
            label: '환불금액',
            value: _formatAmount(payment.cancelledAmount),
          ),
        );
      }
    }

    if (method == OrderPaymentMethod.virtualAccount) {
      if (status == OrderPaymentStatus.pending) {
        rows.add(_PaymentInfoRow(label: '은행', value: payment.vbankName ?? '-'));
        rows.add(
          _PaymentInfoRow(label: '가상계좌 번호', value: payment.vbankNumber ?? '-'),
        );
        rows.add(
          _PaymentInfoRow(label: '예금주명', value: payment.vbankHolder ?? '-'),
        );
        rows.add(
          _PaymentInfoRow(
            label: '입금기한',
            value: _formatDateTime(payment.vbankExpDate),
          ),
        );
      } else {
        rows.add(
          _PaymentInfoRow(
            label: '승인일자',
            value: _formatDateTime(payment.paidAt),
          ),
        );
        rows.add(
          _PaymentInfoRow(label: '승인번호', value: payment.approvalNumber ?? '-'),
        );
      }

      if (status == OrderPaymentStatus.partiallyCancelled ||
          status == OrderPaymentStatus.cancelled) {
        rows.add(
          _PaymentInfoRow(
            label: '취소금액',
            value: _formatAmount(payment.cancelledAmount),
          ),
        );
      } else if (status == OrderPaymentStatus.refunded) {
        rows.add(
          _PaymentInfoRow(
            label: '환불금액',
            value: _formatAmount(payment.cancelledAmount),
          ),
        );
      }
    }

    return rows;
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return '-';
    return _dateTimeFormat.format(dateTime.toLocal());
  }

  String _formatAmount(int? amount) {
    if (amount == null) return '-';
    return '${_amountFormat.format(amount)}원';
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

class _PaymentInfoRow extends StatelessWidget {
  const _PaymentInfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 88,
            child: Text(
              label,
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: context.bodySmall.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
