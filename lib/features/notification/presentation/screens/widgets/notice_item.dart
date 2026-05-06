import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/app_divider.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/entities/notice_list_response_dto.dart';

class NoticeItem extends StatelessWidget {
  const NoticeItem({
    required this.item,
    required this.isExpanded,
    required this.isContentLoading,
    required this.content,
    required this.onTap,
  });

  final NoticeListDto item;
  final bool isExpanded;
  final bool isContentLoading;
  final String? content;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _formatDate(item.createdAt),
                        style: context.bodySmall.copyWith(
                          color: AppColors.darkGrey,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item.title,
                        style: context.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedRotation(
                  duration: const Duration(milliseconds: 180),
                  turns: isExpanded ? 0.5 : 0,
                  child: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: AppColors.darkGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 180),
          crossFadeState: isExpanded
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: Container(
            width: double.infinity,
            color: AppColors.lightGrey,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: isContentLoading
                ? const Center(child: CircularProgressIndicator())
                : Text(
                    content ?? '',
                    style: context.bodySmall.copyWith(
                      color: AppColors.darkGrey,
                      height: 1.5,
                    ),
                  ),
          ),
          secondChild: const SizedBox.shrink(),
        ),
        const AppDivider(height: 1),
      ],
    );
  }
}

String _formatDate(DateTime date) {
  final local = date.toLocal();
  final year = local.year.toString().padLeft(4, '0');
  final month = local.month.toString().padLeft(2, '0');
  final day = local.day.toString().padLeft(2, '0');
  return '$year-$month-$day';
}
