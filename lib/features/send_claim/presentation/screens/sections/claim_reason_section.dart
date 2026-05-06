import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/app_tooltip.dart';
import '../../../../../core/theme/app_box_styles.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../providers/send_claim_viewmodel.dart';

class ClaimReasonSection extends ConsumerWidget {
  const ClaimReasonSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sendClaimViewModelProvider);
    final notifier = ref.read(sendClaimViewModelProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Text("클레임 사유", style: context.titleMedium),
              SizedBox(width: 6),
              AppTooltip(
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "식품의 특성상 배송이 시작되면 상품의 가치가 훼손되어 변심으로 인한 취소가 제한됩니다.",
                      style: context.bodySmall,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.help_outline,
                  size: 16,
                  color: AppColors.pointColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _ClaimTypeButton(
                  title: '수량 문제',
                  value: 'QUANTITY',
                  isSelected: state.claimType == 'QUANTITY',
                  onTap: notifier.selectClaimType,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: _ClaimTypeButton(
                  title: '제품 불량',
                  value: 'CONDITION',
                  isSelected: state.claimType == 'CONDITION',
                  onTap: notifier.selectClaimType,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: AppBoxStyles.borderBox,
            child: TextField(
              onChanged: notifier.changeClaimReason,
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: "상품이 도착하지 않았어요.",
                hintStyle: context.body.copyWith(color: AppColors.darkGrey),
                border: InputBorder.none,
                isCollapsed: true,
              ),
              style: context.body,
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _ClaimTypeButton extends StatelessWidget {
  const _ClaimTypeButton({
    required this.title,
    required this.value,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final String value;
  final bool isSelected;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap(value),
      child: Container(
        height: 30,
        decoration: isSelected
            ? BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.primary),
              )
            : AppBoxStyles.borderBox,
        alignment: Alignment.center,
        child: Text(
          title,
          style: context.body.copyWith(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
