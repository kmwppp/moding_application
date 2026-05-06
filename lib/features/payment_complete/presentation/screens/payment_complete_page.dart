import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/sections/order_info_section.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/sections/price_info_section.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/sections/product_info_pager_section.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/product_card.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../cart/presentation/providers/cart/cart_viewmodel.dart';

class PaymentCompletePage extends ConsumerWidget {
  const PaymentCompletePage({super.key, required this.paymentId});

  final int paymentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentCompleteViewModelProvider(paymentId));
    return WillPopScope(
      onWillPop: () async {
        ref.invalidate(cartViewModelProvider);
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : CustomScrollView(
                  slivers: [
                    _buildProductAppbar(context, "결제완료", ref),
                    SliverToBoxAdapter(child: SizedBox(height: 6)),
                    SliverToBoxAdapter(
                      child: OrderInfoSection(paymentId: paymentId),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 6)),

                    /// 단건일때는 1개의 카드
                    if (state.paymentInfo?.data.orders.length == 1) ...[
                      SliverToBoxAdapter(
                        child: ProductCard(index: 0, paymentId: paymentId),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: 6)),
                    ] else ...[
                      /// 다수건 일때는 여러개의 카드
                      SliverToBoxAdapter(
                        child: ProductInfoPagerSection(paymentId: paymentId),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: 6)),
                    ],

                    SliverToBoxAdapter(
                      child: PriceInfoSection(paymentId: paymentId),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 6)),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "(주)모딩은 통신판매중개자로서 거래의 당사자가 아닙니다.",
                              style: context.caption.copyWith(
                                fontSize: 8,
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            context.go("/main");
                          },
                          child: CustomButton(
                            title: "홈으로 이동",
                            boxColor: AppColors.primary,
                            textColor: Colors.white,
                            paddingVertical: 8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  SliverAppBar _buildProductAppbar(
    BuildContext context,
    String title,
    WidgetRef ref,
  ) {
    const homeIcon = "assets/images/icons/homeIcon.png";

    return SliverAppBar(
      floating: true,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
        onPressed: () {
          ref.invalidate(cartViewModelProvider); // ✅ 상태 초기화
          context.pop();
        },
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(color: Colors.grey.withOpacity(0.3), height: 1.0),
      ),
      title: Text(
        title,
        style: context.title.copyWith(fontWeight: FontWeight.w600),
      ),
      actions: [
        InkWell(
          onTap: () {
            context.go("/main");
          },
          child: Image.asset(homeIcon, width: 24, color: AppColors.darkGrey),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
