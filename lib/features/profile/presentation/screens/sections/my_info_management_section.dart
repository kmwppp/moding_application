import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../router/entities/product_list_page_params.dart';
import '../../../../cart/presentation/providers/cart/cart_tab_jump_provider.dart';
import '../../../../main/domain/enums/MainTab.dart';
import '../../../../main/presentation/providers/main_viewmodel.dart';
import '../../../../order/presentation/screens/order_address_page.dart';
import '../../../../order_list/domain/enums/order_list_page_params.dart';
import '../../../../order_list/domain/enums/order_list_search_type.dart';
import '../../../../payment_complete/domain/entities/payment_complete_response_dto.dart';
import '../../../../payment_complete/presentation/screens/delivery_info/payment_complete_delivery_info_page.dart';
import '../../../../identity_verification/domain/entities/identity_verification_page_params.dart';

class MyInfoManagementSection extends ConsumerWidget {
  const MyInfoManagementSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "내 정보 관리",
            style: context.body.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.darkGrey,
            ),
          ),

          SizedBox(height: 10),
          buildSettingRow(
            context: context,
            buttonText1: "우리매장 정보 관리",
            buttonOnTap1: () {
              context.push(
                '/identity_verification',
                extra: const IdentityVerificationPageParams(
                  successRoute: '/edit_my_info',
                ),
              );
            },
            buttonText2: "배송지 관리",
            buttonOnTap2: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) =>
                      const OrderAddressPage(isSelectionMode: false),
                ),
              );
            },
          ),
          SizedBox(height: 10),
          buildSettingRow(
            context: context,
            buttonText1: "주문·배송 내역",
            buttonOnTap1: () {
              context.push(
                '/order_list_page',
                extra: OrderListPageParams(type: OrderListSearchType.ALL),
              );
            },
            buttonText2: "찜 상품 관리",
            buttonOnTap2: () {
              ref.read(cartTabJumpRequestProvider.notifier).request(1);
              ref.read(mainViewModelProvider.notifier).changeTab(MainTab.cart);
              debugPrint("찜 상품 관리 클릭");
            },
          ),
          SizedBox(height: 10),
          buildSettingRow(
            context: context,
            buttonText1: "최근 주문 상품",
            buttonOnTap1: () {
              context.push(
                '/product_list_page',
                extra: ProductListPageParams(
                  type: ProductRecommendType.recentlyOrdered,
                ),
              );
            },
            buttonText2: "리뷰 관리",
            buttonOnTap2: () {
              context.push('/review_list');
            },
          ),
        ],
      ),
    );
  }

  Widget buildSettingRow({
    required BuildContext context,
    required String buttonText1,
    required VoidCallback buttonOnTap1,
    required String buttonText2,
    required VoidCallback? buttonOnTap2,
  }) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: buttonOnTap1,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                buttonText1,
                style: context.body.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: buttonOnTap2,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                buttonText2,
                style: context.body.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
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
