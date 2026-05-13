import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/loading_indicator.dart';
import 'package:moding_application/core/providers/providers.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_viewmodel.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_address_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_delivery_request_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_payments_info_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_product_info_section.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

import '../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/utils/log_util.dart';
import '../../../../core/utils/order_util.dart';
import '../../../badge/presentation/providers/app_badge_provider.dart';
import '../../../cart/presentation/providers/cart/cart_viewmodel.dart';
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
  PaymentMethodWidgetControl? _paymentMethodWidgetControl;
  AgreementWidgetControl? _agreementWidgetControl;
  ProviderSubscription<CartOrderState>? _cartOrderStateSubscription;
  bool _isPreparingPgWidgets = true;
  bool _isRenderingPgWidgets = false;
  bool _isFinalizingPayment = false;

  @override
  void initState() {
    super.initState();
    _cartOrderStateSubscription = ref.listenManual(cartOrderViewModelProvider, (
      previous,
      next,
    ) async {
      final tossCustomerKey = next.cartOrderInfo?.data.tossCustomerKey;
      if (tossCustomerKey == null || tossCustomerKey.isEmpty) return;
      if (previous?.cartOrderInfo?.data.tossCustomerKey == tossCustomerKey) {
        return;
      }

      ref.read(paymentCustomerKeyProvider.notifier).update(tossCustomerKey);

      if (mounted) {
        setState(() {
          _isPreparingPgWidgets = true;
        });
      }

      _paymentMethodWidgetControl = null;
      _agreementWidgetControl = null;

      await _preparePgWidgetsIfNeeded(ref.read(paymentWidgetProvider), next);
    });

    Future.microtask(() async {
      await ref
          .read(cartOrderViewModelProvider.notifier)
          .getCartOrderInfo(widget.cartItemIds);

      final state = ref.read(cartOrderViewModelProvider);

      if (state.cartOrderInfo?.data != null) {
        await _preparePgWidgetsIfNeeded(ref.read(paymentWidgetProvider), state);
      }
    });
  }

  @override
  void dispose() {
    _cartOrderStateSubscription?.close();
    super.dispose();
  }

  String getCartProductName(List<ProductDto> products) {
    if (products.isEmpty) return "";

    if (products.length == 1) {
      return products[0].productName;
    }

    return "${products[0].productName} 외 ${products.length - 1}개";
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cartOrderViewModelProvider);
    final data = state.cartOrderInfo?.data;
    final notifier = ref.read(cartOrderViewModelProvider.notifier);
    final paymentWidget = ref.watch(paymentWidgetProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  scrolledUnderElevation: 0,
                  backgroundColor: Colors.white,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(1.0),
                    child: Container(
                      color: Colors.grey.withValues(alpha: 0.3),
                      height: 1.0,
                    ),
                  ),
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.darkGrey,
                    ),
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
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final isLast =
                            index ==
                            (state.cartOrderInfo!.data.products.length - 1);

                        return Column(
                          children: [
                            CartOrderProductInfoSection(index: index),

                            /// ✅ 마지막 제외 spacing
                            if (!isLast) const SizedBox(height: 6),
                          ],
                        );
                      },
                      childCount:
                          state.cartOrderInfo?.data.products.length ?? 0,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 6)),
                  // SliverToBoxAdapter(child: CartOrderPaymentsSelectSection()),
                  // const SliverToBoxAdapter(child: SizedBox(height: 6)),
                  SliverToBoxAdapter(child: CartOrderPaymentsInfoSection()),
                  const SliverToBoxAdapter(child: SizedBox(height: 6)),
                  SliverToBoxAdapter(
                    child: PaymentMethodWidget(
                      paymentWidget: paymentWidget,
                      selector: 'methods',
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: AgreementWidget(
                      paymentWidget: paymentWidget,
                      selector: 'agreement',
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 6)),
                  SliverToBoxAdapter(
                    child: GestureDetector(
                      onTap: () async {
                        final agreementStatus = await _agreementWidgetControl
                            ?.getAgreementStatus();
                        if (agreementStatus?.agreedRequiredTerms != true) {
                          if (!context.mounted) return;
                          await CommonDialog.show(
                            context,
                            title: "안내",
                            isSuccess: false,
                            message: "약관에 동의해주세요.",
                          );
                          return;
                        }

                        final createOrderResponse = await notifier
                            .postCreateCartOrder(
                              idempotencyKey: OrderUtil.idempotencyKey(),
                              cartItemIds: widget.cartItemIds,
                            );

                        if (createOrderResponse.success &&
                            createOrderResponse.data != null) {
                          final paymentCode =
                              createOrderResponse
                                  .data!
                                  .orders
                                  .first
                                  .payment
                                  ?.paymentCode ??
                              '';

                          if (paymentCode.isEmpty) {
                            if (!context.mounted) return;
                            CommonDialog.show(
                              context,
                              title: "오류",
                              isSuccess: false,
                              message: "결제 요청 정보를 불러오지 못했습니다.",
                            );
                            return;
                          }

                          final paymentResult = await paymentWidget
                              .requestPayment(
                                paymentInfo: PaymentInfo(
                                  orderId: paymentCode,
                                  orderName: getCartProductName(
                                    state.cartOrderInfo!.data.products,
                                  ),
                                ),
                              );

                          if (paymentResult.success != null) {
                            final success = paymentResult.success!;
                            if (mounted) {
                              setState(() {
                                _isFinalizingPayment = true;
                              });
                            }
                            final confirmResponse = await notifier
                                .postPaymentsConfirm(
                                  paymentKey: success.paymentKey,
                                  paymentCode: success.orderId,
                                  amount: success.amount.toInt(),
                                );

                            if (mounted) {
                              setState(() {
                                _isFinalizingPayment = false;
                              });
                            }
                            if (!context.mounted) return;

                            if (confirmResponse != null) {
                              ref.invalidate(cartViewModelProvider);
                              ref.invalidate(appBadgeProvider);
                              context.pushReplacement(
                                '/payment_complete/${confirmResponse.data.paymentId}',
                              );
                            } else {
                              CommonDialog.show(
                                context,
                                title: "오류",
                                isSuccess: false,
                                message: "결제 승인 처리에 실패했습니다.",
                              );
                            }
                          } else if (paymentResult.pending != null) {
                            final pending = paymentResult.pending!;
                            appLog('결제 승인 대기: ${pending.paymentKey}');
                            if (!context.mounted) return;
                            CommonDialog.show(
                              context,
                              title: "결제 대기",
                              isSuccess: false,
                              message: "결제 승인 대기 상태입니다. 잠시 후 다시 확인해주세요.",
                            );
                          } else if (paymentResult.fail != null) {
                            final fail = paymentResult.fail!;
                            appLog('결제 실패: ${fail.errorCode}');
                            appLog('에러 메시지: ${fail.errorMessage}');

                            await notifier.postPaymentsFail(
                              paymentCode: fail.orderId,
                              errorCode: fail.errorCode,
                              errorMessage: fail.errorMessage,
                            );

                            if (!context.mounted) return;
                            CommonDialog.show(
                              context,
                              title: "결제 실패",
                              isSuccess: false,
                              message: fail.errorMessage,
                            );
                          }
                        } else {
                          if (!context.mounted) return;
                          CommonDialog.show(
                            context,
                            title: "오류",
                            isSuccess: false,
                            message: "일시적인 오류로 결제를 다시 요청해주세요.",
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomButton(
                          title: '${_currency.format(data.totalAmount)}원 결제하기',
                          boxColor: AppColors.primary,
                          textColor: Colors.white,
                          paddingVertical: 10,
                          textStyle: context.bodyLarge.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SliverToBoxAdapter(child: CartOrderTermsSection()),
                  const SliverToBoxAdapter(child: SizedBox(height: 50)),
                ],
              ],
            ),
            if (!state.isLoading &&
                data != null &&
                (_isPreparingPgWidgets || _isFinalizingPayment))
              Positioned.fill(
                child: AbsorbPointer(
                  child: Container(
                    color: Colors.white,
                    child: const Center(child: LoadingIndicator()),
                  ),
                ),
              ),
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

  Future<void> _preparePgWidgetsIfNeeded(
    PaymentWidget paymentWidget,
    CartOrderState state,
  ) async {
    if (!mounted) return;
    if (state.cartOrderInfo?.data == null) return;
    if (_paymentMethodWidgetControl != null &&
        _agreementWidgetControl != null) {
      return;
    }
    if (_isRenderingPgWidgets) return;

    _isRenderingPgWidgets = true;

    try {
      final results = await Future.wait([
        paymentWidget.renderPaymentMethods(
          selector: 'methods',
          amount: Amount(
            value: state.cartOrderInfo?.data.totalAmount ?? 0,
            currency: Currency.KRW,
            country: "KR",
          ),
          options: RenderPaymentMethodsOptions(variantKey: "DEFAULT"),
        ),
        paymentWidget.renderAgreement(selector: 'agreement'),
      ]);

      if (!mounted) return;

      setState(() {
        _paymentMethodWidgetControl = results[0] as PaymentMethodWidgetControl;
        _agreementWidgetControl = results[1] as AgreementWidgetControl;
        _isPreparingPgWidgets = false;
      });
    } catch (e) {
      appLog('PG 렌더 오류: $e');
    } finally {
      _isRenderingPgWidgets = false;
    }
  }
}
