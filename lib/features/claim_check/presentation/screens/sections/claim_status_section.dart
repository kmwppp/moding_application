import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/widgets/text_with_cehvron.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../../domain/entities/claim_check_response_dto.dart';
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 96,
                  child: Text(
                    '송장번호',
                    style: context.bodySmall.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          claim.reshipTrackingNumber ?? '-',
                          style: context.bodySmall.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => _showTrackingDialog(
                          context,
                          trackingNumber: claim.reshipTrackingNumber,
                          items: claim.reshipTrackingEvents,
                        ),
                        child: TextWithChevron(
                          text: '자세히보기',
                          style: context.bodySmall.copyWith(
                            color: AppColors.darkGrey,
                          ),
                          iconSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          if (claim.resolution == ClaimResolution.reship) ...[
            SizedBox(height: 6),
            _statusInfoRow(
              context,
              title: '발송시간',
              content: claim.reshipShippedAt?.toLocal().toString() ?? '-',
            ),
          ],
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

  Future<void> _showTrackingDialog(
    BuildContext context, {
    required String? trackingNumber,
    required List<ClaimCheckTrackingEventDto> items,
  }) {
    return showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      trackingNumber ?? '-',
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.of(dialogContext).pop(),
                      child: const Icon(Icons.close, color: AppColors.darkGrey),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            '시간',
                            style: context.bodySmall.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '현재위치',
                            style: context.bodySmall.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '배송상태',
                            style: context.bodySmall.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                if (items.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Center(
                      child: Text(
                        '배송 추적 정보가 없습니다.',
                        style: context.bodySmall.copyWith(
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  )
                else
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (
                            int index = 0;
                            index < items.length;
                            index++
                          ) ...[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      items[index].timeString,
                                      style: context.caption.copyWith(
                                        color: AppColors.darkGrey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      items[index].where,
                                      style: context.caption,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      items[index].kind,
                                      style: context.caption.copyWith(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (index != items.length - 1)
                              Container(height: 1, color: AppColors.lightGrey),
                          ],
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
