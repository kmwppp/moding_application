import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/modal/app_bottom_sheet.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/delivery_util.dart';
import '../../../../../core/utils/holiday_util.dart';
import '../delivery_info/payment_complete_delivery_info_page.dart';
import 'payment_complete_common_box.dart';
import 'payment_ratio_row.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({super.key, required this.index, required this.paymentId});

  final int index;
  final int paymentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentCompleteViewModelProvider(paymentId));
    final thumbnailCacheSize = (80 * MediaQuery.devicePixelRatioOf(context))
        .round();

    final holidays = HolidayUtil.applySubstituteHolidays(
      HolidayUtil.getKoreanHolidays(DateTime.now().year),
    );

    final deliveryInfo = DeliveryUtil.calculateDeliveryInfo(
      shippingLeadTime: state.paymentInfo!.data.orders[index].shippingLeadTime!,
      deliveryDays: state.paymentInfo!.data.orders[index].deliveryDays!,
      weekendDeliveryAvailability:
          state.paymentInfo!.data.orders[index].isWeekendShipping,
      isSameDayShipping:
          state.paymentInfo!.data.orders[index].isSameDayShipping,
      shippingCutoffTime:
          state.paymentInfo!.data.orders[index].shippingCutoffTime!,
      holidays: holidays,
      isComplete: true,
    );

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            deliveryInfo.title,
            style: context.titleMedium.copyWith(color: AppColors.primary),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "배송 시작 후 수정 불가",
                style: context.bodySmall.copyWith(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  final addressDto =
                      state.paymentInfo!.data.orders[index].deliveryAddress;
                  showDeliverySettingPage(
                    context,
                    addressDto,
                    paymentId,
                    state.paymentInfo!.data.orders[index].orderId,
                  );
                },
                child: TextWithChevron(
                  text: '주문정보 수정',
                  style: context.bodySmall.copyWith(
                    color: AppColors.pointColor,
                  ),
                  iconSize: 10,
                  spacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          PaymentRatioRow(
            title: "주문번호",
            content: state.paymentInfo?.data.orders[index].orderCode ?? "",
          ),
          SizedBox(height: 6),
          PaymentRatioRow(
            title: "수령인",
            content:
                state
                    .paymentInfo
                    ?.data
                    .orders[index]
                    .deliveryAddress
                    .recipientName ??
                "",
          ),
          SizedBox(height: 6),
          PaymentRatioRow(
            title: "전화번호",
            content:
                state.paymentInfo?.data.orders[index].deliveryAddress.phone ??
                "",
          ),
          SizedBox(height: 6),
          PaymentRatioRow(
            title: "수령주소",
            content:
                "${state.paymentInfo?.data.orders[index].deliveryAddress.address ?? ""} ${state.paymentInfo?.data.orders[index].deliveryAddress.addressDetail ?? ""} ${state.paymentInfo?.data.orders[index].deliveryAddress.addressName ?? ""}",
          ),
          SizedBox(height: 6),
          PaymentRatioRow(
            title: "배송 요청사항",
            content:
                state.paymentInfo?.data.orders[index].deliveryRequest ?? "",
          ),

          Divider(),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "총 ${state.paymentInfo!.data.orders.length}개의 옵션",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _showSellerInfo(context);
                },
                child: TextWithChevron(
                  text: "판매자 정보 보기",
                  style: context.bodySmall.copyWith(
                    color: AppColors.pointColor,
                  ),
                  iconSize: 10,
                  spacing: 2,
                ),
              ),
            ],
          ),

          SizedBox(height: 6),

          SizedBox(height: 10),
          Column(
            children: state.paymentInfo!.data.orders[index].items
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            item.thumbnailUrl ?? '',
                            width: 80,
                            height: 80,
                            cacheWidth: thumbnailCacheSize,
                            cacheHeight: thumbnailCacheSize,
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const SizedBox(
                                width: 80,
                                height: 80,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                ),
                              );
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 80,
                                height: 80,
                                color: Colors.grey.shade200,
                                child: const Icon(Icons.broken_image),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.productName,
                                  style: context.body,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "${item.optionName} ${item.quantity}개",
                                  style: context.bodySmall.copyWith(
                                    color: AppColors.darkGrey,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "${StringUtil.formatCurrency(item.totalPrice)}원",
                                  style: context.body,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  void _showSellerInfo(BuildContext context) {
    AppBottomSheet.show(
      context: context,
      title: "판매자 정보",
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("상호: ", style: context.body),
              Text("대표자: ", style: context.body),
              Text("사업자번호: ", style: context.body),
              Text("주소: ", style: context.body),
              Text("연락처: ", style: context.body),
            ],
          ),
        ),
      ),
    );
  }

  void showDeliverySettingPage(
    BuildContext context,
    PaymentDeliveryAddressDto addressDto,
    int paymentId,
    int orderId,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      // 🔥 이게 핵심입니다. 상태바 침범을 물리적으로 막습니다.
      backgroundColor: Colors.white,
      // 투명 대신 흰색으로 고정
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        // height를 지정하지 않아도 isScrollControlled와 useSafeArea가 만나면
        // 상태바 아래 최대 높이까지 알아서 확장됩니다.
        return PaymentCompleteDeliveryInfoPage(
          addressDto: addressDto,
          paymentId: paymentId,
          orderId: orderId,
        );
      },
    );
  }
}
