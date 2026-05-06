import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/app_divider.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/entities/order_list_response_dto.dart';
import 'order_card.dart';

class OrderListContent extends StatelessWidget {
  const OrderListContent({
    super.key,
    required this.isLoading,
    required this.errorMessage,
    required this.orders,
    required this.onRefreshRequested,
    required this.isLoadingMore,
    required this.hasMore,
  });

  final bool isLoading;
  final String? errorMessage;
  final List<OrderListItemDto> orders;
  final VoidCallback onRefreshRequested;
  final bool isLoadingMore;
  final bool hasMore;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Padding(
        padding: EdgeInsets.all(20),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (errorMessage != null) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            errorMessage!,
            style: context.body.copyWith(color: AppColors.darkGrey),
          ),
        ),
      );
    }

    if (orders.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            '해당 날짜의 주문 내역이 없습니다.',
            style: context.body.copyWith(color: AppColors.darkGrey),
          ),
        ),
      );
    }

    return Column(
      children: [
        for (int index = 0; index < orders.length; index++) ...[
          OrderCard(
            order: orders[index],
            onRefreshRequested: onRefreshRequested,
          ),
          if (index != orders.length - 1) const AppDivider(height: 4),
        ],
        if (isLoadingMore)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: CircularProgressIndicator()),
          )
        else if (hasMore)
          const SizedBox(height: 32),
      ],
    );
  }
}
