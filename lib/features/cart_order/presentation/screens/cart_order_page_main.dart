import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/loading_indicator.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_viewmodel.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_address_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_delivery_request_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_payments_info_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_payments_select_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_product_info_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_terms_section.dart';
import 'package:moding_application/features/order/domain/enums/easy_payments_method.dart';
import 'package:moding_application/features/order/domain/enums/nice_payments_method.dart';
import 'package:moding_application/features/order/domain/enums/payments_method.dart';

import '../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../core/utils/order_util.dart';
import '../../../order/presentation/screens/order_payment_webview_page.dart';
import '../../domain/entities/cart_order_response_dto.dart';
import '../providers/cart_order_state.dart';
import 'cart_order_address_page.dart';

class CartOrderPageMain extends ConsumerStatefulWidget {
  const CartOrderPageMain({super.key, required this.cartItemIds});

  final List<int> cartItemIds;

  @override
  ConsumerState<CartOrderPageMain> createState() => _CartOrderPageMainState();
}

class _CartOrderPageMainState extends ConsumerState<CartOrderPageMain> {
  static final _currency = NumberFormat('#,###', 'ko_KR');

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(cartOrderViewModelProvider.notifier)
          .getCartOrderInfo(widget.cartItemIds);
    });
  }

  String getCartProductName(List<ProductDto> products) {
    if (products.isEmpty) return "";

    if (products.length == 1) {
      return products[0].productName ?? "";
    }

    return "${products[0].productName ?? ""} 외 ${products.length - 1}개";
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cartOrderViewModelProvider);
    final data = state.cartOrderInfo?.data;
    final notifier = ref.read(cartOrderViewModelProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: state.isLoading || data == null
          ? null
          : Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 16),
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final response = await notifier.postCreateCartOrder(
                          idempotencyKey: OrderUtil.idempotencyKey(),
                          cartItemIds: widget.cartItemIds,
                        );

                        if (response.success) {
                          showPaymentWebViewPage(
                            state: state,
                            amount: state.cartOrderInfo?.data.totalAmount ?? 0,
                            productName: getCartProductName(
                              state.cartOrderInfo!.data.products,
                            ),
                            paymentCode:
                                response.data?.orders[0].payment?.paymentCode ??
                                "",
                          );
                        } else {
                          CommonDialog.show(
                            context,
                            title: "오류",
                            isSuccess: false,
                            message: "일시적인 오류로 결제를 다시 요청해주세요.",
                          );
                        }
                      },
                      child: CustomButton(
                        title: '${_currency.format(data.totalAmount)}원 결제하기',
                        boxColor: AppColors.primary,
                        textColor: Colors.white,
                        paddingVertical: 6,
                        textStyle: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1.0),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                  height: 1.0,
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
                onPressed: context.pop,
              ),
              title: Text(
                '주문/결제',
                style: context.title.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            if (state.isLoading)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: LoadingIndicator()),
              )
            else if (data == null)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text('주문 정보를 불러오지 못했습니다.', style: context.body),
                ),
              )
            else ...[
              const SliverToBoxAdapter(child: SizedBox(height: 6)),
              SliverToBoxAdapter(
                child: GestureDetector(
                  onTap: () {
                    showAddressSettingPage();
                  },
                  child: CartOrderAddressSection(),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 6)),
              SliverToBoxAdapter(child: CartOrderDeliveryRequestSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 6)),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final isLast =
                      index == (state.cartOrderInfo!.data.products.length - 1);

                  return Column(
                    children: [
                      CartOrderProductInfoSection(index: index),

                      /// ✅ 마지막 제외 spacing
                      if (!isLast) const SizedBox(height: 6),
                    ],
                  );
                }, childCount: state.cartOrderInfo?.data.products.length ?? 0),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 6)),
              SliverToBoxAdapter(child: CartOrderPaymentsSelectSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 6)),
              SliverToBoxAdapter(child: CartOrderPaymentsInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 6)),
              SliverToBoxAdapter(child: CartOrderTermsSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
            ],
          ],
        ),
      ),
    );
  }

  void showAddressSettingPage() {
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
        return const CartOrderAddressPage();
      },
    );
  }

  void showPaymentWebViewPage({
    required CartOrderState state,
    required int amount,
    required String productName,
    required String paymentCode,
  }) async {
    final paymentId = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPaymentWebviewPage(
          amount: amount,
          goodsName: productName,
          method: _getMethod(
            paymentsMethod: state.paymentMethod,
            easyPaymentsMethod: state.easyPaymentMethod,
          ),
          vbankHolder: state.paymentMethod == PaymentsMethod.vbank
              ? "(주)모딩"
              : null,
          paymentCode: paymentCode,
        ),
      ),
    );

    if (paymentId == null) return;
    if (!mounted) return;

    if (paymentId == "-1") {
      CommonDialog.show(
        context,
        title: "실패",
        isSuccess: false,
        message: "결제를 다시 요청해주세요.",
      );
    } else {
      ref.invalidate(cartViewModelProvider);
      ref.invalidate(appBadgeProvider);
      context.pushReplacement('/payment_complete/$paymentId');
    }
  }

  NicePaymentsMethod _getMethod({
    required PaymentsMethod paymentsMethod,
    required EasyPaymentsMethod easyPaymentsMethod,
  }) {
    switch (paymentsMethod) {
      case PaymentsMethod.vbank:
        return NicePaymentsMethod.vbank;
      case PaymentsMethod.card:
        return NicePaymentsMethod.card;
      case PaymentsMethod.easy:
        switch (easyPaymentsMethod) {
          case EasyPaymentsMethod.naverpayCard:
            return NicePaymentsMethod.naverpayCard;
          case EasyPaymentsMethod.kakaopayCard:
            return NicePaymentsMethod.kakaopayCard;
        }
    }
  }
}
