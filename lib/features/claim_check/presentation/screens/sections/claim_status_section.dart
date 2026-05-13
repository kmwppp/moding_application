import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../../domain/enums/claim_resolution.dart';
import '../../../domain/enums/claim_status.dart';
import '../../../domain/enums/reship_delivery_method.dart';
import '../../providers/claim_check_viewmodel.dart';

class ClaimStatusSection extends ConsumerWidget {
  const ClaimStatusSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(claimCheckViewModelProvider);
    final claim = state.claimDetail?.data;

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "클레임 상태",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 14),
          if (claim != null) ...[
            _statusInfoRow(
              context,
              title: '현재 상태',
              content: _claimStatusLabel(claim.status),
            ),
            const SizedBox(height: 8),
            ..._buildStatusDescription(context, claim),
          ],
        ],
      ),
    );
  }

  List<Widget> _buildStatusDescription(BuildContext context, claim) {
    switch (claim.status) {
      case ClaimStatus.requested:
        return [
          Text(
            '판매자가 확인중입니다.',
            style: context.body.copyWith(fontWeight: FontWeight.w500),
          ),
        ];
      case ClaimStatus.approved:
        return [
          _statusInfoRow(
            context,
            title: '처리 방식',
            content: claim.resolution?.label ?? '-',
          ),
        ];
      case ClaimStatus.reshipShipped:
        return [
          _statusInfoRow(
            context,
            title: '처리 방식',
            content: claim.resolution?.label ?? '-',
          ),
          if (claim.resolution == ClaimResolution.reship)
            _statusInfoRow(
              context,
              title: '배송 방식',
              content: claim.reshipDeliveryMethod?.label ?? '-',
            ),
          if (claim.resolution == ClaimResolution.reship &&
              claim.reshipDeliveryMethod == ReshipDeliveryMethod.courier)
            _statusInfoRow(
              context,
              title: '송장번호',
              content: claim.reshipTrackingNumber ?? '-',
            ),
          if (claim.resolution == ClaimResolution.reship)
            _statusInfoRow(
              context,
              title: '발송시간',
              content: claim.reshipShippedAt?.toLocal().toString() ?? '-',
            ),
        ];
      case ClaimStatus.rejected:
        return [
          _statusInfoRow(
            context,
            title: '판매자 거절사유',
            content: claim.rejectReason ?? '-',
          ),
        ];
      case ClaimStatus.appealed:
        return [
          _statusInfoRow(
            context,
            title: '판매자 거절사유',
            content: claim.rejectReason ?? '-',
          ),
          _statusInfoRow(
            context,
            title: '이의 신청 사유',
            content: claim.appealReason ?? '-',
          ),
        ];
      case ClaimStatus.completed:
        return [
          Text(
            '처리가 완료된 클레임입니다.',
            style: context.body.copyWith(fontWeight: FontWeight.w500),
          ),
        ];
      default:
        return const [];
    }
  }

  Widget _statusInfoRow(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 96,
            child: Text(
              title,
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ),
          Expanded(
            child: Text(
              content,
              style: context.bodySmall.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  String _claimStatusLabel(ClaimStatus status) => status.label;
}
