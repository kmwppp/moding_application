import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../providers/order_list_viewmodel.dart';
import '../widgets/date_list_item.dart';

class OrderListSection extends ConsumerWidget {
  const OrderListSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderListViewModelProvider);
    final dateList = state.dateListWrapper?.data.content ?? [];
    if (state.dateListWrapper == null) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: Center(child: CircularProgressIndicator()),
      );
    } else if (dateList.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: Text(
            '주문 내역이 없습니다.',
            style: context.bodyLarge.copyWith(color: AppColors.darkGrey),
          ),
        ),
      );
    } else {
      return SliverList.builder(
        itemCount: dateList.length,
        itemBuilder: (context, index) {
          final date = dateList[index];
          return DateListItem(key: ValueKey('order-date-$date'), date: date);
        },
      );
    }
  }
}
