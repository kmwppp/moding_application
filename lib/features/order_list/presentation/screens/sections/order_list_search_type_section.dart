import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/enums/order_list_search_type.dart';
import '../../providers/order_list_viewmodel.dart';

class OrderListSearchTypeSection extends ConsumerWidget {
  const OrderListSearchTypeSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderListViewModelProvider);
    final notifier = ref.read(orderListViewModelProvider.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        spacing: 4,
        children: [
          Expanded(
            child: _filterButton(
              context: context,
              title: "전체",
              buttonType: OrderListSearchType.ALL,
              selectedType: state.searchType,
              onTap: notifier.changeSearchType,
            ),
          ),
          Expanded(
            child: _filterButton(
              context: context,
              title: "주문관리",
              buttonType: OrderListSearchType.ORDER,
              selectedType: state.searchType,
              onTap: notifier.changeSearchType,
            ),
          ),
          Expanded(
            child: _filterButton(
              context: context,
              title: "클레임",
              buttonType: OrderListSearchType.CLAIM,
              selectedType: state.searchType,
              onTap: notifier.changeSearchType,
            ),
          ),
          Expanded(
            child: _filterButton(
              context: context,
              title: "증빙관리",
              buttonType: OrderListSearchType.EVIDENCE,
              selectedType: state.searchType,
              onTap: notifier.changeSearchType,
            ),
          ),
        ],
      ),
    );
  }

  Widget _filterButton({
    required BuildContext context,
    required String title,
    required OrderListSearchType buttonType,
    required OrderListSearchType selectedType,
    required ValueChanged<OrderListSearchType> onTap,
  }) {
    final isSelected = selectedType == buttonType;

    return GestureDetector(
      onTap: () => onTap(buttonType),
      child: CustomButton(
        title: title,
        boxColor: isSelected ? AppColors.primary : Colors.white,
        textColor: isSelected ? Colors.white : Colors.black,
        borderColor: isSelected ? AppColors.primary : AppColors.dividerGrey,
        paddingVertical: 8,
        textStyle: context.bodySmall.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
