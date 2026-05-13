import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/providers/providers.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/order/domain/entities/order_request_dto.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_address_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_delivery_request_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_payments_info_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_product_info_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/toss_payments_section.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../core/presentation/widgets/loading_indicator.dart';
import '../providers/order_state.dart';
import 'order_address_page.dart';

class OrderPageMain extends ConsumerStatefulWidget {
  const OrderPageMain({super.key, required this.requestDto});

  final OrderRequestDto requestDto;

  @override
  ConsumerState<OrderPageMain> createState() => _OrderPageMainState();
}

class _OrderPageMainState extends ConsumerState<OrderPageMain> {
  PaymentMethodWidgetControl? _paymentMethodWidgetControl;
  AgreementWidgetControl? _agreementWidgetControl;
  ProviderSubscription<OrderState>? _orderStateSubscription;
  bool _isPreparingPgWidgets = true;
  bool _isRenderingPgWidgets = false;
  bool _isFinalizingPayment = false;

  @override
  void initState() {
    super.initState();

    // 주문 정보 요청
    Future.microtask(() async {
      await ref
          .read(orderViewModelProvider.notifier)
          .getOrderInfo(widget.requestDto);

      final state = ref.read(orderViewModelProvider);

      if (state.orderInfo != null) {
        await _preparePgWidgetsIfNeeded(ref.read(paymentWidgetProvider), state);
      }
    });

    // customerKey 변경 감지
    _orderStateSubscription = ref.listenManual(orderViewModelProvider, (
      previous,
      next,
    ) async {
      final tossCustomerKey = next.orderInfo?.tossCustomerKey;

      if (tossCustomerKey == null || tossCustomerKey.isEmpty) {
        return;
      }

      // 이전과 같으면 무시
      if (previous?.orderInfo?.tossCustomerKey == tossCustomerKey) {
        return;
      }

      ref.read(paymentCustomerKeyProvider.notifier).update(tossCustomerKey);

      // 위젯 초기화
      _paymentMethodWidgetControl = null;
      _agreementWidgetControl = null;

      if (mounted) {
        setState(() {
          _isPreparingPgWidgets = true;
        });
      }

      // 다시 렌더
      await _preparePgWidgetsIfNeeded(ref.read(paymentWidgetProvider), next);
    });
  }

  @override
  void dispose() {
    _orderStateSubscription?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderViewModelProvider);

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _preparePgWidgetsIfNeeded(paymentWidget, state);
    // });

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
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
                            state.orderInfo?.deliveryAddress.addressDetail ??
                            "",
                        phone: state.orderInfo?.deliveryAddress.phone ?? "",
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: const SizedBox(height: 6)),
                  SliverToBoxAdapter(child: OrderDeliveryRequestSection()),
                  SliverToBoxAdapter(child: const SizedBox(height: 6)),
                  SliverToBoxAdapter(child: OrderProductInfoSection(index: 0)),
                  SliverToBoxAdapter(child: const SizedBox(height: 6)),
                  SliverToBoxAdapter(child: OrderPaymentsInfoSection()),
                  SliverToBoxAdapter(child: const SizedBox(height: 10)),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        TossPaymentSection(
                          onValidateAgreement: _validateAgreement,
                          onConfirmingPaymentChanged: (isConfirming) {
                            if (!mounted) return;
                            setState(() {
                              _isFinalizingPayment = isConfirming;
                            });
                          },
                        ),

                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (!state.isLoading &&
              state.orderInfo != null &&
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
    );
  }

  Future<void> _preparePgWidgetsIfNeeded(
    PaymentWidget paymentWidget,
    OrderState state,
  ) async {
    if (!mounted) return;

    // 주문정보 없으면 종료
    if (state.orderInfo == null) return;

    // 이미 렌더 완료됐으면 종료
    if (_paymentMethodWidgetControl != null &&
        _agreementWidgetControl != null) {
      return;
    }

    // 렌더 중이면 종료
    if (_isRenderingPgWidgets) return;

    _isRenderingPgWidgets = true;

    try {
      final results = await Future.wait([
        paymentWidget.renderPaymentMethods(
          selector: 'methods',
          amount: Amount(
            value: state.orderInfo!.totalAmount,
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

  Future<bool> _validateAgreement() async {
    final agreementStatus = await _agreementWidgetControl?.getAgreementStatus();
    if (agreementStatus?.agreedRequiredTerms == true) {
      return true;
    }

    if (!mounted) return false;

    await CommonDialog.show(
      context,
      title: "안내",
      isSuccess: false,
      message: "약관에 동의해주세요.",
    );
    return false;
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
        child: Container(
          color: Colors.grey.withValues(alpha: 0.3),
          height: 1.0,
        ),
      ),
      title: Text(
        title,
        style: context.title.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
