import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/order_util.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';
import 'package:moding_application/features/order/domain/entities/order_request_dto.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';
import 'package:moding_application/features/order/presentation/screens/order_payment_webview_page.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_address_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_delivery_request_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_payments_info_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_payments_select_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_product_info_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_terms_section.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/presentation/widgets/loading_indicator.dart';
import '../../../../core/utils/string_util.dart';
import '../../domain/enums/easy_payments_method.dart';
import '../../domain/enums/nice_payments_method.dart';
import '../../domain/enums/payments_method.dart';
import '../providers/order_state.dart';
import 'order_address_page.dart';

class OrderPageMain extends ConsumerStatefulWidget {
  const OrderPageMain({super.key, required this.requestDto});

  final OrderRequestDto requestDto;

  @override
  ConsumerState<OrderPageMain> createState() => _OrderPageMainState();
}

class _OrderPageMainState extends ConsumerState<OrderPageMain> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(orderViewModelProvider.notifier).getOrderInfo(widget.requestDto);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderViewModelProvider);
    final notifier = ref.read(orderViewModelProvider.notifier);
    return Scaffold(
      bottomNavigationBar: !state.isLoading
          ? Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 16),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          print("clicked");
                          final response = await notifier.postCreateOrder(
                            idempotencyKey: OrderUtil.idempotencyKey(),
                          );
                          if (response.success) {
                            showPaymentWebViewPage(
                              state: state,
                              amount: state.orderInfo?.totalAmount ?? 0,
                              productName: state.orderInfo?.productName ?? "",
                              paymentCode:
                                  response.data?.payment?.paymentCode ?? "",
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
                          title:
                              "${StringUtil.formatCurrency(state.orderInfo?.totalAmount ?? 0)}원 결제하기",
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
            )
          : null,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            _buildProductAppbar(context, "주문/결제"),
            if (state.isLoading)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: LoadingIndicator()),
              )
            else ...[
              SliverToBoxAdapter(child: const SizedBox(height: 6)),
              SliverToBoxAdapter(
                child: GestureDetector(
                  onTap: () {
                    showAddressSettingPage();
                  },
                  child: OrderAddressSection(
                    name: state.orderInfo?.deliveryAddress.name ?? "",
                    address: state.orderInfo?.deliveryAddress.address ?? "",
                    addressDetail:
                        state.orderInfo?.deliveryAddress.addressDetail ?? "",
                    phone: state.orderInfo?.deliveryAddress.phone ?? "",
                  ),
                ),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 6)),
              SliverToBoxAdapter(child: OrderDeliveryRequestSection()),
              SliverToBoxAdapter(child: const SizedBox(height: 6)),
              SliverToBoxAdapter(child: OrderProductInfoSection(index: 0)),
              SliverToBoxAdapter(child: const SizedBox(height: 6)),
              SliverToBoxAdapter(child: OrderPaymentsSelectSection()),
              SliverToBoxAdapter(child: const SizedBox(height: 6)),
              SliverToBoxAdapter(child: OrderPaymentsInfoSection()),
              SliverToBoxAdapter(child: const SizedBox(height: 10)),
              SliverToBoxAdapter(child: OrderTermsSection()),
              // SliverToBoxAdapter(child: OrderAgreeSection()),
              SliverToBoxAdapter(child: const SizedBox(height: 6)),

              SliverToBoxAdapter(child: const SizedBox(height: 6)),
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
        return const OrderAddressPage();
      },
    );
  }

  void showPaymentWebViewPage({
    required OrderState state,
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

  SliverAppBar _buildProductAppbar(BuildContext context, String title) {
    return SliverAppBar(
      floating: true,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
        onPressed: context.pop,
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(color: Colors.grey.withOpacity(0.3), height: 1.0),
      ),
      title: Text(
        title,
        style: context.title.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
