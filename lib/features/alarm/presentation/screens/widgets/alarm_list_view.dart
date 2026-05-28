import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/entities/alarm_list_response_dto.dart';

class AlarmListView extends StatelessWidget {
  const AlarmListView({
    super.key,
    required this.items,
    required this.isInitialLoading,
    required this.isFetchingMore,
    required this.scrollController,
    required this.onTap,
  });

  final List<AlarmItemDto> items;
  final bool isInitialLoading;
  final bool isFetchingMore;
  final ScrollController scrollController;
  final Future<void> Function(AlarmItemDto item) onTap;

  @override
  Widget build(BuildContext context) {
    if (isInitialLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (items.isEmpty) {
      return Center(
        child: Text(
          '알림이 없어요.',
          style: context.body.copyWith(color: AppColors.darkGrey),
        ),
      );
    }

    return ListView.separated(
      controller: scrollController,
      padding: EdgeInsets.zero,
      itemCount: items.length + (isFetchingMore ? 1 : 0),
      separatorBuilder: (context, index) =>
          Container(height: 1, color: AppColors.lightGrey),
      itemBuilder: (context, index) {
        if (index == items.length) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final item = items[index];

        return InkWell(
          onTap: () => onTap(item),
          child: Container(
            color: item.isRead ? AppColors.lightGrey : const Color(0xFFF7FBF7),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.label,
                        style: context.caption.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    if (!item.isRead)
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: AppColors.pointColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  item.title,
                  style: context.body.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Text(
                  item.body,
                  style: context.bodySmall.copyWith(
                    color: AppColors.darkGrey,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  DateFormat('yyyy.MM.dd HH:mm').format(item.sentAt),
                  style: context.caption.copyWith(color: AppColors.darkGrey),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
