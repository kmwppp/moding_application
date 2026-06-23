import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/network/exceptions/api_code_exception.dart';
import 'package:moding_application/core/constants/app_keys.dart';
import 'package:moding_application/core/providers/providers.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/alcohol_purchase_flow.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/core/utils/order_util.dart';
import 'package:moding_application/features/order/domain/entities/order_request_dto.dart';
import 'package:moding_application/features/order/domain/enums/pg_provider.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';
import 'package:moding_application/features/order/presentation/screens/inicis_payment_webview_page.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_address_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_delivery_request_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_payments_info_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_product_info_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/order_terms_section.dart';
import 'package:moding_application/features/order/presentation/screens/sections/toss_payments_section.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/presentation/widgets/loading_indicator.dart';
import '../../../../core/utils/string_util.dart';
import '../providers/order_state.dart';
import 'order_address_page.dart';

class OrderPageMain extends ConsumerStatefulWidget {
  const OrderPageMain({
    super.key,
    required this.requestDto,
    required this.pgProvider,
  });

  final OrderRequestDto requestDto;
  final PgProvider pgProvider;

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

    // 주문 정보 요청
    Future.microtask(() async {
      await _loadOrderInfo();
    });

    // customerKey 변경 감지
    _orderStateSubscription = ref.listenManual(orderViewModelProvider, (
      previous,
      next,
    ) async {
      final customerKey = next.orderInfo?.customerKey;

      if (customerKey == null || customerKey.isEmpty) {
        return;
      }

      // 이전과 같으면 무시
      if (previous?.orderInfo?.customerKey == customerKey) {
        return;
      }

      ref.read(paymentCustomerKeyProvider.notifier).update(customerKey);

      // 위젯 초기화
      _paymentMethodWidgetControl = null;
      _agreementWidgetControl = null;

      if (mounted) {
        setState(() {
          _isPreparingPgWidgets = true;
        });
      }

      _schedulePgWidgetPreparation(next.orderInfo?.totalAmount ?? 0);
    });
  }

  @override
  void dispose() {
    _orderStateSubscription?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(
      orderViewModelProvider.select((state) => state.isLoading),
    );
    final orderInfo = ref.watch(
      orderViewModelProvider.select((state) => state.orderInfo),
    );
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    if (!isLoading && orderInfo != null) {
      _schedulePgWidgetPreparation(orderInfo.totalAmount);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: bottomInset),
              child: CustomScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  _buildProductAppbar(context, "주문/결제"),
                  if (isLoading)
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
                          name: orderInfo?.deliveryAddress.name ?? "",
                          address: orderInfo?.deliveryAddress.address ?? "",
                          addressDetail:
                              orderInfo?.deliveryAddress.addressDetail ?? "",
                          phone: orderInfo?.deliveryAddress.phone ?? "",
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: const SizedBox(height: 6)),
                    const SliverToBoxAdapter(
                      child: OrderDeliveryRequestSection(),
                    ),
                    SliverToBoxAdapter(child: const SizedBox(height: 6)),
                    const SliverToBoxAdapter(
                      child: OrderProductInfoSection(index: 0),
                    ),
                    SliverToBoxAdapter(child: const SizedBox(height: 6)),
                    const SliverToBoxAdapter(child: OrderPaymentsInfoSection()),
                    SliverToBoxAdapter(child: const SizedBox(height: 10)),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          _buildPaymentSection(),
                          SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          if (!isLoading &&
              orderInfo != null &&
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
    );
  }

  Future<void> _loadOrderInfo() async {
    try {
      await ref
          .read(orderViewModelProvider.notifier)
          .getOrderInfo(widget.requestDto);
    } on ApiCodeException catch (exception) {
      if (!mounted) return;
      await handleAlcoholPurchaseException(
        context,
        ref,
        exception,
        failureBehavior: AlcoholFailureBehavior.pop,
        onVerified: _loadOrderInfo,
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

  Widget _buildPaymentSection() {
    final orderInfo = ref.watch(
      orderViewModelProvider.select((state) => state.orderInfo),
    );
    switch (widget.pgProvider) {
      case PgProvider.toss:
        return TossPaymentSection(
          onValidateAgreement: _validateAgreement,
          onConfirmingPaymentChanged: (isConfirming) {
            if (!mounted) return;
            setState(() {
              _isFinalizingPayment = isConfirming;
            });
          },
          isPaymentStarting: _isStartingPayment,
          onPaymentStartingChanged: (isStarting) {
            if (!mounted) return;
            setState(() {
              _isStartingPayment = isStarting;
            });
          },
          pgProvider: widget.pgProvider,
          customerName: orderInfo?.customerName ?? '주문자',
        );
      case PgProvider.inicis:
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "결제 수단",
                style: context.titleMedium.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
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
                          "가상계좌",
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
                  SizedBox(width: 10),
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
                          "신용·체크카드",
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
              SizedBox(height: 10),
              const OrderTermsSection(),
              SizedBox(height: 10),
              // ===== 결제 버튼 =====
              GestureDetector(
                onTap: _isStartingPayment ? null : _startInicisPaymentFlow,
                child: CustomButton(
                  title:
                      "${StringUtil.formatCurrency(orderInfo?.totalAmount ?? 0)}원 결제하기",
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

  BoxDecoration _buildInicisPaymentMethodDecoration({
    required bool isSelected,
  }) {
    return AppBoxStyles.borderBoxNoneShadow.copyWith(
      border: Border.all(
        color: isSelected ? AppColors.primary : AppColors.boxBorderGrey,
      ),
    );
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

    final notifier = ref.read(orderViewModelProvider.notifier);
    if (mounted) {
      setState(() {
        _isStartingPayment = true;
      });
    }

    try {
      final createOrderResponse = await notifier.postCreateOrder(
        idempotencyKey: OrderUtil.idempotencyKey(),
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
          ref.read(orderViewModelProvider).orderInfo?.customerName ?? '주문자';

      if (!mounted) return;
      final result = await Navigator.of(context).push<String>(
        MaterialPageRoute(
          builder: (_) => InicisPaymentWebviewPage(
            paymentMethod: _selectedInicisPaymentMethod.pgValue,
            paymentCode: paymentCode,
            signature: paymentSignature,
            timestamp: paymentTimestamp,
            amount:
                createdOrder.totalAmount ??
                ref.read(orderViewModelProvider).orderInfo?.totalAmount ??
                0,
            goodsName: createdOrder.items.first.productName,
            buyerName: customerName,
          ),
        ),
      );

      if (!mounted || result == null) return;

      appLog('[Inicis] result url -> $result');
      final uri = Uri.tryParse(result);
      final resultCode = uri?.queryParameters['result'];
      final paymentId = uri?.queryParameters['paymentId'];

      if (resultCode == 'success' &&
          paymentId != null &&
          paymentId.isNotEmpty) {
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

  Future<void> _preparePgWidgetsIfNeeded(
    PaymentWidget paymentWidget,
    int totalAmount,
  ) async {
    if (!mounted) return;
    if (totalAmount <= 0) return;

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
            value: totalAmount,
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
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
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

enum _InicisPaymentMethod { virtualAccount, card }

extension _InicisPaymentMethodX on _InicisPaymentMethod {
  String get pgValue {
    switch (this) {
      case _InicisPaymentMethod.virtualAccount:
        return 'VBANK';
      case _InicisPaymentMethod.card:
        return 'CARD';
    }
  }
}
