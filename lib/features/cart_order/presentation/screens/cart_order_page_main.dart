import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/constants/app_keys.dart';
import 'package:moding_application/core/network/exceptions/api_code_exception.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/loading_indicator.dart';
import 'package:moding_application/core/providers/providers.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/alcohol_purchase_flow.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/core/utils/order_util.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_viewmodel.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_address_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_delivery_request_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_payments_info_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_product_info_section.dart';
import 'package:moding_application/features/cart_order/presentation/screens/sections/cart_order_terms_section.dart';
import 'package:moding_application/features/order/domain/enums/pg_provider.dart';
import 'package:moding_application/features/order/presentation/screens/inicis_payment_webview_page.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

import '../../domain/entities/cart_create_order_response_dto.dart';
import '../../domain/entities/cart_order_response_dto.dart';
import '../providers/cart_order_state.dart';
import 'cart_order_address_page.dart';

class CartOrderPageMain extends ConsumerStatefulWidget {
  const CartOrderPageMain({
    super.key,
    required this.cartItemIds,
    required this.pgProvider,
  });

  final List<int> cartItemIds;
  final PgProvider pgProvider;

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
  bool _isStartingPayment = false;
  bool _isPgRenderScheduled = false;
  _InicisPaymentMethod _selectedInicisPaymentMethod =
      _InicisPaymentMethod.virtualAccount;

  @override
  void initState() {
    super.initState();

    if (widget.pgProvider != PgProvider.toss) {
      _isPreparingPgWidgets = false;
    }

    _cartOrderStateSubscription = ref.listenManual(cartOrderViewModelProvider, (
      previous,
      next,
    ) async {
      if (widget.pgProvider != PgProvider.toss) {
        return;
      }

      final customerKey = next.cartOrderInfo?.data.customerKey;
      if (customerKey == null || customerKey.isEmpty) return;
      if (previous?.cartOrderInfo?.data.customerKey == customerKey) {
        return;
      }

      ref.read(paymentCustomerKeyProvider.notifier).update(customerKey);

      if (mounted) {
        setState(() {
          _isPreparingPgWidgets = true;
        });
      }

      _paymentMethodWidgetControl = null;
      _agreementWidgetControl = null;

      _schedulePgWidgetPreparation(next.cartOrderInfo?.data.totalAmount ?? 0);
    });

    Future.microtask(() async {
      await _loadCartOrderInfo();
    });
  }

  @override
  void dispose() {
    _cartOrderStateSubscription?.close();
    super.dispose();
  }

  String getCartProductName(List<ProductDto> products) {
    if (products.isEmpty) return '';

    if (products.length == 1) {
      return products[0].productName;
    }

    return '${products[0].productName} 외 ${products.length - 1}개';
  }

  String getCreatedOrderProductName(List<CartCreateOrderItemDto> items) {
    if (items.isEmpty) return '';

    if (items.length == 1) {
      return items[0].productName;
    }

    return '${items[0].productName} 외 ${items.length - 1}개';
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(
      cartOrderViewModelProvider.select((state) => state.isLoading),
    );
    final cartOrderInfo = ref.watch(
      cartOrderViewModelProvider.select((state) => state.cartOrderInfo),
    );
    final data = cartOrderInfo?.data;
    final notifier = ref.read(cartOrderViewModelProvider.notifier);
    final paymentWidget = ref.watch(paymentWidgetProvider);
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    if (!isLoading && data != null && widget.pgProvider == PgProvider.toss) {
      _schedulePgWidgetPreparation(data.totalAmount);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: bottomInset),
              child: CustomScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
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
                      style: context.title.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (isLoading)
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
                        onTap: showAddressSettingPage,
                        child: const CartOrderAddressSection(),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 6)),
                    const SliverToBoxAdapter(
                      child: CartOrderDeliveryRequestSection(),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 6)),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final isLast = index == (data.products.length - 1);

                        return Column(
                          children: [
                            CartOrderProductInfoSection(index: index),
                            if (!isLast) const SizedBox(height: 6),
                          ],
                        );
                      }, childCount: data.products.length),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 6)),
                    const SliverToBoxAdapter(
                      child: CartOrderPaymentsInfoSection(),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 10)),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: _buildPaymentSection(
                          data: data,
                          notifier: notifier,
                          paymentWidget: paymentWidget,
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 50)),
                  ],
                ],
              ),
            ),
            if (!isLoading &&
                data != null &&
                ((widget.pgProvider == PgProvider.toss &&
                        (_isPreparingPgWidgets ||
                            _isFinalizingPayment ||
                            _isStartingPayment)) ||
                    (widget.pgProvider == PgProvider.inicis &&
                        _isStartingPayment)))
              Positioned.fill(
                child: AbsorbPointer(
                  child: Container(
                    color: widget.pgProvider == PgProvider.inicis
                        ? Colors.black.withValues(alpha: 0.22)
                        : Colors.white,
                    child: const Center(child: LoadingIndicator()),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentSection({
    required CartOrderData data,
    required CartOrderViewModel notifier,
    required dynamic paymentWidget,
  }) {
    switch (widget.pgProvider) {
      case PgProvider.toss:
        return Column(
          children: [
            RepaintBoundary(
              child: PaymentMethodWidget(
                paymentWidget: paymentWidget,
                selector: 'methods',
              ),
            ),
            RepaintBoundary(
              child: AgreementWidget(
                paymentWidget: paymentWidget,
                selector: 'agreement',
              ),
            ),
            const SizedBox(height: 6),
            GestureDetector(
              onTap: _isStartingPayment
                  ? null
                  : () => _startCartPaymentFlow(
                      notifier: notifier,
                      paymentWidget: paymentWidget,
                      productName: getCartProductName(data.products),
                    ),
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
          ],
        );
      case PgProvider.inicis:
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '결제 수단',
                style: context.titleMedium.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedInicisPaymentMethod =
                              _InicisPaymentMethod.virtualAccount;
                        });
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: _buildInicisPaymentMethodDecoration(
                          isSelected:
                              _selectedInicisPaymentMethod ==
                              _InicisPaymentMethod.virtualAccount,
                        ),
                        child: Text(
                          '가상계좌',
                          style: context.body.copyWith(
                            fontWeight: FontWeight.w500,
                            color:
                                _selectedInicisPaymentMethod ==
                                    _InicisPaymentMethod.virtualAccount
                                ? AppColors.primary
                                : AppColors.darkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedInicisPaymentMethod =
                              _InicisPaymentMethod.card;
                        });
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: _buildInicisPaymentMethodDecoration(
                          isSelected:
                              _selectedInicisPaymentMethod ==
                              _InicisPaymentMethod.card,
                        ),
                        child: Text(
                          '신용·체크카드',
                          style: context.body.copyWith(
                            fontWeight: FontWeight.w500,
                            color:
                                _selectedInicisPaymentMethod ==
                                    _InicisPaymentMethod.card
                                ? AppColors.primary
                                : AppColors.darkGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const CartOrderTermsSection(),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: _isStartingPayment ? null : _startInicisPaymentFlow,
                child: CustomButton(
                  title: '${StringUtil.formatCurrency(data.totalAmount)}원 결제하기',
                  boxColor: AppColors.primary,
                  textColor: Colors.white,
                  paddingVertical: 10,
                  textStyle: context.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
    }
  }

  Future<void> _startCartPaymentFlow({
    required CartOrderViewModel notifier,
    required dynamic paymentWidget,
    required String productName,
  }) async {
    if (_isStartingPayment) return;

    final agreementStatus = await _agreementWidgetControl?.getAgreementStatus();
    if (agreementStatus?.agreedRequiredTerms != true) {
      if (!context.mounted) return;
      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: '약관에 동의해주세요.',
      );
      return;
    }

    if (mounted) {
      setState(() {
        _isStartingPayment = true;
      });
    }

    try {
      final createOrderResponse = await notifier.postCreateCartOrder(
        idempotencyKey: OrderUtil.idempotencyKey(),
        cartItemIds: widget.cartItemIds,
        pgProvider: widget.pgProvider,
      );

      if (createOrderResponse.success && createOrderResponse.data != null) {
        final paymentCode =
            createOrderResponse.data!.payment?.paymentCode ?? '';

        if (paymentCode.isEmpty) {
          if (!context.mounted) return;
          CommonDialog.show(
            context,
            title: '오류',
            isSuccess: false,
            message: '결제 요청 정보를 불러오지 못했습니다.',
          );
          return;
        }

        final paymentResult = await paymentWidget.requestPayment(
          paymentInfo: PaymentInfo(
            orderId: paymentCode,
            orderName: productName,
            customerName:
                ref
                    .read(cartOrderViewModelProvider)
                    .cartOrderInfo
                    ?.data
                    .customerName ??
                '주문자',
          ),
        );

        if (paymentResult.success != null) {
          final success = paymentResult.success!;
          appLog(
            '[PaymentsConfirm] cart toss success -> paymentKey=${success.paymentKey}, orderId=${success.orderId}, amount=${success.amount}',
          );
          if (mounted) {
            setState(() {
              _isFinalizingPayment = true;
            });
          }
          final confirmResponse = await notifier.postPaymentsConfirm(
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
            appLog(
              '[PaymentsConfirm] cart toss confirm success -> paymentId=${confirmResponse.data.paymentId}',
            );
            ref.invalidate(cartViewModelProvider);
            ref.invalidate(appBadgeProvider);
            context.pushReplacement(
              '/payment_complete/${confirmResponse.data.paymentId}',
            );
          } else {
            appLog('[PaymentsConfirm] cart toss confirm returned null');
            CommonDialog.show(
              context,
              title: '오류',
              isSuccess: false,
              message: '결제 승인 처리에 실패했습니다.',
            );
          }
        } else if (paymentResult.pending != null) {
          final pending = paymentResult.pending!;
          appLog('결제 승인 대기: ${pending.paymentKey}');
          if (!context.mounted) return;
          CommonDialog.show(
            context,
            title: '결제 대기',
            isSuccess: false,
            message: '결제 승인 대기 상태입니다. 잠시 후 다시 확인해주세요.',
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
            title: '결제 실패',
            isSuccess: false,
            message: fail.errorMessage,
          );
        }
      } else {
        if (!context.mounted) return;
        CommonDialog.show(
          context,
          title: '오류',
          isSuccess: false,
          message: '일시적인 오류로 결제를 다시 요청해주세요.',
        );
      }
    } on ApiCodeException catch (exception) {
      if (mounted) {
        setState(() {
          _isStartingPayment = false;
        });
      }
      if (!context.mounted) return;
      await handleAlcoholPurchaseException(
        context,
        ref,
        exception,
        failureBehavior: AlcoholFailureBehavior.stay,
        onVerified: () => _startCartPaymentFlow(
          notifier: notifier,
          paymentWidget: paymentWidget,
          productName: productName,
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isStartingPayment = false;
        });
      }
    }
  }

  Future<void> _startInicisPaymentFlow() async {
    if (_isStartingPayment) return;

    if (AppKeys.inicisMid.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '이니시스 결제 설정이 필요합니다.',
      );
      return;
    }

    final notifier = ref.read(cartOrderViewModelProvider.notifier);
    if (mounted) {
      setState(() {
        _isStartingPayment = true;
      });
    }

    try {
      final createOrderResponse = await notifier.postCreateCartOrder(
        idempotencyKey: OrderUtil.idempotencyKey(),
        cartItemIds: widget.cartItemIds,
        pgProvider: widget.pgProvider,
      );

      if (!createOrderResponse.success || createOrderResponse.data == null) {
        if (!mounted) return;
        await CommonDialog.show(
          context,
          title: '오류',
          isSuccess: false,
          message: '일시적인 오류로 결제를 다시 요청해주세요.',
        );
        return;
      }

      final createdOrder = createOrderResponse.data!;
      final cartOrderInfo = ref.read(cartOrderViewModelProvider).cartOrderInfo;
      final previewTotalAmount = cartOrderInfo?.data.totalAmount ?? 0;
      final firstOrder = createdOrder.orders.first;
      final paymentCode = createdOrder.payment?.paymentCode ?? '';
      final paymentSignature = createdOrder.payment?.signature ?? '';
      final paymentTimestamp = createdOrder.payment?.timestamp ?? '';
      if (paymentCode.isEmpty) {
        if (!mounted) return;
        await CommonDialog.show(
          context,
          title: '오류',
          isSuccess: false,
          message: '결제 요청 정보를 불러오지 못했습니다.',
        );
        return;
      }

      if (paymentSignature.isEmpty || paymentTimestamp.isEmpty) {
        if (!mounted) return;
        await CommonDialog.show(
          context,
          title: '오류',
          isSuccess: false,
          message: '이니시스 결제 요청 정보를 불러오지 못했습니다.',
        );
        return;
      }

      final customerName =
          ref
              .read(cartOrderViewModelProvider)
              .cartOrderInfo
              ?.data
              .customerName ??
          '주문자';

      if (!mounted) return;
      final result = await Navigator.of(context).push<String>(
        MaterialPageRoute(
          builder: (_) => InicisPaymentWebviewPage(
            paymentMethod: _selectedInicisPaymentMethod.pgValue,
            paymentCode: paymentCode,
            signature: paymentSignature,
            timestamp: paymentTimestamp,
            amount: previewTotalAmount,
            goodsName: getCreatedOrderProductName(firstOrder.items),
            buyerName: customerName,
          ),
        ),
      );

      if (!mounted || result == null) return;

      appLog('[Inicis] cart result url -> $result');
      final uri = Uri.tryParse(result);
      final resultCode = uri?.queryParameters['result'];
      final paymentId = uri?.queryParameters['paymentId'];

      if (resultCode == 'success' &&
          paymentId != null &&
          paymentId.isNotEmpty) {
        ref.invalidate(cartViewModelProvider);
        ref.invalidate(appBadgeProvider);
        if (!mounted) return;
        context.pushReplacement('/payment_complete/$paymentId');
        return;
      }

      if (!mounted) return;
      await CommonDialog.show(
        context,
        title: '결제 실패',
        isSuccess: false,
        message: '결제에 실패했습니다.',
      );
    } on ApiCodeException catch (exception) {
      if (mounted) {
        setState(() {
          _isStartingPayment = false;
        });
      }
      if (!mounted) return;
      await handleAlcoholPurchaseException(
        context,
        ref,
        exception,
        failureBehavior: AlcoholFailureBehavior.stay,
        onVerified: _startInicisPaymentFlow,
      );
    } finally {
      if (mounted) {
        setState(() {
          _isStartingPayment = false;
        });
      }
    }
  }

  Future<void> _loadCartOrderInfo() async {
    try {
      await ref
          .read(cartOrderViewModelProvider.notifier)
          .getCartOrderInfo(widget.cartItemIds, pgProvider: widget.pgProvider);
    } on ApiCodeException catch (exception) {
      if (!mounted) return;
      await handleAlcoholPurchaseException(
        context,
        ref,
        exception,
        failureBehavior: AlcoholFailureBehavior.pop,
        onVerified: _loadCartOrderInfo,
      );
    }
  }

  void _schedulePgWidgetPreparation(int totalAmount) {
    if (!mounted ||
        _isPgRenderScheduled ||
        widget.pgProvider != PgProvider.toss) {
      return;
    }
    _isPgRenderScheduled = true;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _isPgRenderScheduled = false;
      if (!mounted) return;
      await _preparePgWidgetsIfNeeded(
        ref.read(paymentWidgetProvider),
        totalAmount,
      );
    });
  }

  void showAddressSettingPage() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return const CartOrderAddressPage();
      },
    );
  }

  Future<void> _preparePgWidgetsIfNeeded(
    PaymentWidget paymentWidget,
    int totalAmount,
  ) async {
    if (!mounted) return;
    if (totalAmount <= 0) return;
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
            value: totalAmount,
            currency: Currency.KRW,
            country: 'KR',
          ),
          options: RenderPaymentMethodsOptions(variantKey: 'DEFAULT'),
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

  BoxDecoration _buildInicisPaymentMethodDecoration({
    required bool isSelected,
  }) {
    return AppBoxStyles.borderBoxNoneShadow.copyWith(
      border: Border.all(
        color: isSelected ? AppColors.primary : AppColors.boxBorderGrey,
      ),
    );
  }
}

enum _InicisPaymentMethod {
  virtualAccount('VBANK'),
  card('CARD');

  const _InicisPaymentMethod(this.pgValue);

  final String pgValue;
}
