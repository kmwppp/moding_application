import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../providers/notification_state.dart';
import '../../providers/notification_viewmodel.dart';

class FaqCategorySection extends ConsumerWidget {
  const FaqCategorySection({required this.state});

  final NotificationState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: NotificationFaqCategory.values.map((category) {
            final isSelected = state.selectedFaqCategory == category;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: InkWell(
                onTap: () => ref
                    .read(notificationViewModelProvider.notifier)
                    .selectFaqCategory(category),
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.mediumGrey,
                    ),
                  ),
                  child: Text(
                    category.label,
                    style: context.bodySmall.copyWith(
                      color: isSelected ? Colors.white : AppColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
