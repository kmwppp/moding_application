import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/order_list/domain/enums/order_list_page_params.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../order_list/domain/enums/order_list_search_type.dart';
import '../../../domain/entities/profile_summary_dto.dart';

class OrderAndDeliverySection extends ConsumerWidget {
  OrderAndDeliverySection({super.key});

  final labels = ["입금대기", "결제완료", "상품출고중", "배송중", "배송완료"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double iconPadding = 8.0; // (horizontal 4 * 2)
    const double iconSize = 16.0;
    const double totalSeparatorWidth = iconSize + iconPadding;
    final state = ref.watch(profileViewModelProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "주문 및 배송 조회",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  context.push(
                    '/order_list_page',
                    extra: OrderListPageParams(type: OrderListSearchType.ALL),
                  );
                },
                child: TextWithChevron(
                  text: '전체보기',
                  style: context.body.copyWith(color: AppColors.darkGrey),
                  iconSize: 10,
                  spacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              // 상단: 박스(Expanded) + 아이콘(Fixed Width)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(9, (index) {
                  if (index.isEven) {
                    return Expanded(
                      child: InkWell(
                        onTap: () {
                          context.push(
                            '/order_list_page',
                            extra: OrderListPageParams(
                              type: OrderListSearchType.ORDER,
                            ),
                          );
                        },
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              "${_getDeliveryStateCount(index, state.profileSummary!.data.orderCounts)}",
                              style: context.titleMedium.copyWith(
                                color: AppColors.darkGrey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Icon(
                        Icons.remove,
                        size: iconSize,
                        color: AppColors.darkGrey,
                      ),
                    );
                  }
                }),
              ),
              const SizedBox(height: 6),
              // 하단: 텍스트(Expanded) + 빈 공간(Fixed Width)
              Row(
                children: List.generate(9, (index) {
                  if (index.isEven) {
                    final labelIndex = index ~/ 2;
                    return Expanded(
                      child: Text(
                        labels[labelIndex],
                        textAlign: TextAlign.center,
                        style: context.caption.copyWith(
                          color: AppColors.darkGrey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  } else {
                    // 상단 아이콘의 전체 너비(Size + Padding)만큼 빈 공간을 삽입
                    return const SizedBox(width: totalSeparatorWidth);
                  }
                }),
              ),
            ],
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              context.push(
                '/order_list_page',
                extra: OrderListPageParams(type: OrderListSearchType.ALL),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                width: double.infinity,
                height: 32,
                color: AppColors.lightGrey,
                alignment: Alignment.center,
                child: Text(
                  "취소·반품·교환 ${state.profileSummary!.data.orderCounts.cancelled}",
                  style: context.bodySmall.copyWith(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          InkWell(
            onTap: () {
              context.push(
                '/order_list_page',
                extra: OrderListPageParams(type: OrderListSearchType.EVIDENCE),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                width: double.infinity,
                height: 32,
                color: AppColors.lightGrey,
                alignment: Alignment.center,
                child: Text(
                  "세금계산서 관리",
                  style: context.bodySmall.copyWith(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int _getDeliveryStateCount(int index, ProfileOrderCountsDto counts) {
    switch (index) {
      case 0:
        return counts.paymentPending;
      case 1:
        return counts.ordered;
      case 2:
        return counts.confirmed;
      case 3:
        return counts.shipped;
      case 4:
        return counts.delivered;
      default:
        return 0;
    }
  }
}
