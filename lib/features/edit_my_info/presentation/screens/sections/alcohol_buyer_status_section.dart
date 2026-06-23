import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/text_with_cehvron.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/edit_my_info/domain/enums/alcohol_buyer_status.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

class AlcoholBuyerStatusSection extends ConsumerWidget {
  const AlcoholBuyerStatusSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(editMyInfoViewModelProvider);
    final notifier = ref.read(editMyInfoViewModelProvider.notifier);
    final alcoholBuyer = state.alcoholBuyerStatus?.data;
    final canApply =
        alcoholBuyer == null ||
        alcoholBuyer.status == AlcoholBuyerStatus.none ||
        alcoholBuyer.status == AlcoholBuyerStatus.rejected;

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '주류 구매 자격',
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              if (canApply)
                InkWell(
                  onTap: state.isAlcoholBuyerLoading
                      ? null
                      : () async {
                          final shouldApply = await CommonDialog.showChoice(
                            context,
                            title: '안내',
                            isSuccess: false,
                            message: '주류 구매 자격을 신청하시겠습니까?',
                            primaryButtonText: '신청',
                            secondaryButtonText: '취소',
                          );
                          if (!context.mounted || shouldApply != true) return;

                          final response = await notifier
                              .postAlcoholBuyerApply();
                          if (!context.mounted) return;
                          await CommonDialog.show(
                            context,
                            title: response.success ? '완료' : '오류',
                            isSuccess: response.success,
                            message: response.message.isNotEmpty
                                ? response.message
                                : response.success
                                ? '주류 구매자격 신청이 완료되었습니다.'
                                : '주류 구매자격 신청에 실패했습니다.',
                          );
                        },
                  child: TextWithChevron(
                    text: '구매자격 신청',
                    style: context.bodySmall.copyWith(
                      color: AppColors.darkGrey,
                    ),
                    iconSize: 10,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '자격상태',
                  style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  state.isAlcoholBuyerLoading
                      ? '불러오는 중'
                      : _statusLabel(alcoholBuyer?.status),
                  style: context.bodySmall.copyWith(
                    color: _statusColor(alcoholBuyer?.status),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          if (alcoholBuyer?.status == AlcoholBuyerStatus.rejected &&
              (alcoholBuyer?.rejectReason?.trim().isNotEmpty ?? false)) ...[
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 84),
                child: Text(
                  alcoholBuyer!.rejectReason!.trim(),
                  style: context.caption.copyWith(color: AppColors.darkGrey),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _statusLabel(AlcoholBuyerStatus? status) {
    return switch (status) {
      AlcoholBuyerStatus.pending => '심사 중',
      AlcoholBuyerStatus.approved => '승인',
      AlcoholBuyerStatus.rejected => '거절',
      AlcoholBuyerStatus.none || null => '미신청',
    };
  }

  Color _statusColor(AlcoholBuyerStatus? status) {
    return switch (status) {
      AlcoholBuyerStatus.approved => AppColors.primary,
      AlcoholBuyerStatus.rejected => Colors.red,
      AlcoholBuyerStatus.pending ||
      AlcoholBuyerStatus.none ||
      null => AppColors.darkGrey,
    };
  }
}
