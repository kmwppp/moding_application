import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/order_check/domain/entities/order_detail_dto.dart';
import 'package:moding_application/features/order_check/domain/enums/order_status.dart';
import 'package:moding_application/features/order_check/presentation/providers/order_check_viewmodel.dart';
import 'package:moding_application/features/order_check/presentation/screens/sections/delivery_info_section.dart';
import 'package:moding_application/features/order_check/presentation/screens/sections/payment_info_section.dart';
import 'package:moding_application/features/order_check/presentation/screens/sections/product_info_section.dart';
import 'package:moding_application/features/order_list/presentation/providers/order_list_viewmodel.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';
import 'package:moding_application/features/review_list/presentation/screens/widgets/create_review_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../badge/presentation/providers/app_badge_provider.dart';
import '../../../cart/presentation/providers/cart/cart_viewmodel.dart';

class OrderCheckPage extends ConsumerStatefulWidget {
  const OrderCheckPage({super.key, required this.orderId});

  final int orderId;

  @override
  ConsumerState<OrderCheckPage> createState() => _OrderCheckPageState();
}

class _OrderCheckPageState extends ConsumerState<OrderCheckPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(orderCheckViewModelProvider.notifier)
          .getOrderDetail(widget.orderId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderCheckViewModelProvider);
    final hasCurrentOrder =
        state.orderDetail?.data.id == widget.orderId &&
        state.orderDetail != null;

    if (!hasCurrentOrder) {
      return Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const AppSliverAppbar(title: "배송·주문관리"),
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            context.pop(true);
          },
          child: CustomScrollView(
            slivers: [
              const AppSliverAppbar(title: "배송·주문관리"),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "주문은 판매자 확인 후 출고되며, 배송완료 후 48시간 내 클레임이 없으면 자동 구매확정됩니다.",
                    style: context.caption.copyWith(color: AppColors.darkGrey),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: DeliveryInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(child: PaymentInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(child: ProductInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: _OrderCheckActionSection(
                  order: state.orderDetail?.data,
                  onRefreshRequested: () {
                    ref
                        .read(orderCheckViewModelProvider.notifier)
                        .getOrderDetail(widget.orderId);
                  },
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderCheckActionSection extends StatelessWidget {
  const _OrderCheckActionSection({
    required this.order,
    required this.onRefreshRequested,
  });

  final OrderDetailDto? order;
  final VoidCallback onRefreshRequested;

  @override
  Widget build(BuildContext context) {
    final actions = _OrderCheckActionUi.fromOrder(order);
    if (actions.isEmpty || order == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          for (int index = 0; index < actions.length; index++) ...[
            if (index != 0) const SizedBox(width: 6),
            Expanded(
              child: _OrderCheckActionButton(
                action: actions[index],
                order: order!,
                onRefreshRequested: onRefreshRequested,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _OrderCheckActionButton extends ConsumerWidget {
  const _OrderCheckActionButton({
    required this.action,
    required this.order,
    required this.onRefreshRequested,
  });

  final _OrderCheckActionUi action;
  final OrderDetailDto order;
  final VoidCallback onRefreshRequested;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _handleAction(context, action.type, order, ref),
      child: CustomButton(
        title: action.title,
        boxColor: action.color,
        borderColor: action.color,
        textColor: Colors.white,
        paddingVertical: 10,
        textStyle: context.bodySmall.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Future<void> _handleAction(
    BuildContext context,
    _OrderCheckActionType type,
    OrderDetailDto order,
    WidgetRef ref,
  ) async {
    switch (type) {
      case _OrderCheckActionType.orderedCancel:
        _onOrderedCancelPressed(context, order.id, ref);
        break;
      case _OrderCheckActionType.pendingCancel:
        await _onPendingCancelPressed(context, order, ref);
        break;
      case _OrderCheckActionType.claim:
        await _onClaimPressed(context, order.id);
        break;
      case _OrderCheckActionType.confirmPurchase:
        _onConfirmPurchasePressed(context, order.id, ref);
        break;
      case _OrderCheckActionType.taxInvoiceReady:
        _onTaxInvoiceReadyPressed(context, order.id);
        break;
      case _OrderCheckActionType.claimProgress:
        await _onClaimProgressPressed(context, order);
        break;
      case _OrderCheckActionType.taxInvoiceHistory:
        await _onTaxInvoiceHistoryPressed(context, order.id, ref);
        break;
      case _OrderCheckActionType.createReview:
        _onCreateReviewPressed(context, order);
        break;
    }
  }

  void _onOrderedCancelPressed(
    BuildContext context,
    int orderId,
    WidgetRef ref,
  ) {
    showOrderedCancelBottomSheet(context, ref, orderId);
  }

  Future<void> _onPendingCancelPressed(
    BuildContext context,
    OrderDetailDto order,
    WidgetRef ref,
  ) async {
    final paymentId = order.payment!.paymentId;
    if (paymentId == 0) {
      CommonDialog.show(
        context,
        title: "오류",
        isSuccess: false,
        message: "일시적인 오류로 다시 요청해주세요.",
      );
      return;
    }

    final paymentInfoWrapper = await ref
        .read(orderListViewModelProvider.notifier)
        .getPaymentInfo(paymentId);
    if (!context.mounted) return;

    if (paymentInfoWrapper == null) {
      CommonDialog.show(
        context,
        title: "오류",
        isSuccess: false,
        message: "일시적인 오류로 다시 요청해주세요.",
      );
      return;
    }

    showPendingCancelBottomSheet(context, paymentInfoWrapper, ref, paymentId);
  }

  Future<void> _onClaimPressed(BuildContext context, int orderId) async {
    final result = await context.push<bool>('/send_claim/$orderId');
    if (result == true) {
      onRefreshRequested();
    }
  }

  void _onConfirmPurchasePressed(
    BuildContext context,
    int orderId,
    WidgetRef ref,
  ) {
    showConfirmPurchaseBottomSheet(context, ref, orderId);
  }

  void _onTaxInvoiceReadyPressed(BuildContext context, int orderId) {
    debugPrint('세금계산서 발행 준비중: orderId=$orderId');
    CommonDialog.show(
      context,
      title: "발행중",
      isSuccess: false,
      message: "세금계산서가 발행중입니다.",
    );
  }

  Future<void> _onClaimProgressPressed(
    BuildContext context,
    OrderDetailDto order,
  ) async {
    final claimId = order.claimId;
    debugPrint('클레임 진행 내역 확인: orderId=${order.id}');
    if (claimId == null) {
      CommonDialog.show(
        context,
        title: "오류",
        isSuccess: false,
        message: "클레임 정보를 확인할 수 없습니다.",
      );
      return;
    }

    final result = await context.push<bool>('/claim_check/$claimId');
    if (result == true) {
      onRefreshRequested();
    }
  }

  Future<void> _onTaxInvoiceHistoryPressed(
    BuildContext context,
    int orderId,
    WidgetRef ref,
  ) async {
    debugPrint('세금계산서 발행 내역: orderId=$orderId');
    final taxInvoice = await ref
        .read(orderCheckViewModelProvider.notifier)
        .getOrderTaxInvoiceUrl(orderId);
    final url = taxInvoice?.data.url.trim() ?? '';
    if (url.isNotEmpty) {
      await openUrl(url);
      return;
    }

    if (!context.mounted) return;
    CommonDialog.show(
      context,
      title: "오류",
      isSuccess: false,
      message: "세금계산서를 불러오지 못했습니다.",
    );
  }

  void _onCreateReviewPressed(BuildContext context, OrderDetailDto order) {
    final firstItem = order.items.isNotEmpty ? order.items.first : null;
    AppBottomSheet.show(
      context: context,
      title: '리뷰 작성',
      child: CreateReviewBottomSheet(
        parentContext: context,
        orderId: order.id,
        productName: firstItem?.productName ?? '상품명',
        optionName: _optionText(order.items),
        onCreated: onRefreshRequested,
      ),
    );
  }

  String _optionText(List<OrderDetailItemDto> items) {
    if (items.isEmpty) return '';

    final firstProduct = items.first;
    if (items.length == 1) {
      return '${firstProduct.optionName} / ${firstProduct.quantity}개';
    }

    return '${firstProduct.optionName} 외 ${items.length - 1}개';
  }

  Future<void> openUrl(String receiptUrl) async {
    final Uri url = Uri.parse(receiptUrl);

    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('URL 실행 실패');
    }
  }

  void showPendingCancelBottomSheet(
    BuildContext context,
    PaymentCompleteResponseWrapper wrapper,
    WidgetRef ref,
    int paymentId,
  ) {
    AppBottomSheet.show(
      context: context,
      title: "주문 취소",
      child: _OrderCheckCancelSheet(
        contentBuilder: (context, setSubmitting) => SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("주문을 취소하시겠습니까?", style: context.titleMedium),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: AppBoxStyles.borderBox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "입금전 상품은 함께 취소되며, 결제 금액은 환불됩니다.",
                        style: context.bodySmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "취소한 상품은 장바구니에서 다시 확인하실 수 있습니다.",
                        style: context.bodySmall,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "환불은 영업일 기준 1~2일 소요될 수 있습니다.",
                        style: context.caption.copyWith(color: Colors.red),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                if (wrapper.data.orders.length > 1) ...[
                  const SizedBox(height: 20),
                  Text(
                    "함께 취소되는 상품",
                    style: context.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _PendingCancelProductPager(orders: wrapper.data.orders),
                  const SizedBox(height: 50),
                ] else
                  const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          setSubmitting(true);
                          final result = await ref
                              .read(orderListViewModelProvider.notifier)
                              .deletePaymentInfo(paymentId);
                          if (!context.mounted) return;
                          setSubmitting(false);

                          if (result.success) {
                            ref.invalidate(cartViewModelProvider);
                            ref.invalidate(appBadgeProvider);
                            CommonDialog.show(
                              context,
                              title: "주문 취소",
                              isSuccess: false,
                              message: "주문을 취소하였습니다.",
                              onPressed: () {
                                context.pop();
                                onRefreshRequested();
                              },
                            );
                          } else {
                            CommonDialog.show(
                              context,
                              title: "오류",
                              isSuccess: false,
                              message: "일시적인 오류로 다시 요청해주세요.",
                            );
                          }
                        },
                        child: CustomButton(
                          title: "주문 취소하기",
                          boxColor: AppColors.pointColor,
                          textColor: Colors.white,
                          paddingVertical: 10,
                          borderColor: AppColors.pointColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: CustomButton(
                          title: "닫기",
                          boxColor: AppColors.primary,
                          textColor: Colors.white,
                          paddingVertical: 10,
                          borderColor: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showOrderedCancelBottomSheet(
    BuildContext context,
    WidgetRef ref,
    int orderId,
  ) {
    AppBottomSheet.show(
      context: context,
      title: "주문 취소",
      child: _OrderCheckCancelSheet(
        contentBuilder: (context, setSubmitting) => SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("주문을 취소하시겠습니까?", style: context.titleMedium),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: AppBoxStyles.borderBox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Text("배송이 시작되면 취소가 불가능하며,", style: context.body),
                      const SizedBox(height: 4),
                      Text("취소 시 결제 금액은 환불됩니다.", style: context.body),
                      const SizedBox(height: 20),
                      Text(
                        "환불은 영업일 기준 1~2일 소요될 수 있습니다.",
                        style: context.caption.copyWith(color: Colors.red),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          setSubmitting(true);
                          final result = await ref
                              .read(orderListViewModelProvider.notifier)
                              .deleteOrderInfo(orderId);
                          if (!context.mounted) return;
                          setSubmitting(false);

                          if (result.success) {
                            CommonDialog.show(
                              context,
                              title: "주문 취소",
                              isSuccess: false,
                              message: "주문을 취소하였습니다.",
                              onPressed: () {
                                context.pop();
                                onRefreshRequested();
                              },
                            );
                          } else {
                            CommonDialog.show(
                              context,
                              title: "오류",
                              isSuccess: false,
                              message: "일시적인 오류로 다시 요청해주세요.",
                            );
                          }
                        },
                        child: CustomButton(
                          title: "주문 취소하기",
                          boxColor: AppColors.pointColor,
                          textColor: Colors.white,
                          paddingVertical: 10,
                          borderColor: AppColors.pointColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: CustomButton(
                          title: "닫기",
                          boxColor: AppColors.primary,
                          textColor: Colors.white,
                          paddingVertical: 10,
                          borderColor: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showConfirmPurchaseBottomSheet(
    BuildContext context,
    WidgetRef ref,
    int orderId,
  ) {
    AppBottomSheet.show(
      context: context,
      title: "구매확정",
      child: SafeArea(
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("구매를 확정하시겠습니까?", style: context.titleMedium),
              const SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final result = await ref
                            .read(orderListViewModelProvider.notifier)
                            .patchPurchaseConfirm(orderId);
                        if (!context.mounted) return;

                        if (result.success) {
                          CommonDialog.show(
                            context,
                            title: "구매확정",
                            isSuccess: false,
                            message: "구매가 확정되었습니다.",
                            onPressed: () {
                              context.pop();
                              onRefreshRequested();
                            },
                          );
                        } else {
                          CommonDialog.show(
                            context,
                            title: "오류",
                            isSuccess: false,
                            message: result.message,
                          );
                        }
                      },
                      child: CustomButton(
                        title: "확정",
                        boxColor: AppColors.pointColor,
                        textColor: Colors.white,
                        paddingVertical: 10,
                        borderColor: AppColors.pointColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: CustomButton(
                        title: "취소",
                        boxColor: AppColors.primary,
                        textColor: Colors.white,
                        paddingVertical: 10,
                        borderColor: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderCheckActionUi {
  const _OrderCheckActionUi({
    required this.title,
    required this.color,
    required this.type,
  });

  final String title;
  final Color color;
  final _OrderCheckActionType type;

  static List<_OrderCheckActionUi> fromOrder(OrderDetailDto? order) {
    final status = order?.status;
    final isReviewable = order?.isReviewable ?? false;

    switch (status) {
      case OrderStatus.paymentPending:
        return const [
          _OrderCheckActionUi(
            title: '주문 취소하기',
            color: AppColors.primary,
            type: _OrderCheckActionType.pendingCancel,
          ),
        ];
      case OrderStatus.ordered:
        return const [
          _OrderCheckActionUi(
            title: '주문 취소하기',
            color: AppColors.primary,
            type: _OrderCheckActionType.orderedCancel,
          ),
        ];
      case OrderStatus.delivered:
        return const [
          _OrderCheckActionUi(
            title: '클레임 접수',
            color: AppColors.pointColor,
            type: _OrderCheckActionType.claim,
          ),
          _OrderCheckActionUi(
            title: '구매확정',
            color: AppColors.primary,
            type: _OrderCheckActionType.confirmPurchase,
          ),
        ];
      case OrderStatus.purchaseConfirmed:
        return [
          const _OrderCheckActionUi(
            title: '세금계산서 발행 준비중',
            color: AppColors.darkGrey,
            type: _OrderCheckActionType.taxInvoiceReady,
          ),
          if (isReviewable)
            const _OrderCheckActionUi(
              title: '리뷰 작성',
              color: AppColors.primary,
              type: _OrderCheckActionType.createReview,
            ),
        ];
      case OrderStatus.claimInProgress:
        return const [
          _OrderCheckActionUi(
            title: '클레임 진행 내역 확인',
            color: AppColors.primary,
            type: _OrderCheckActionType.claimProgress,
          ),
        ];
      case OrderStatus.settlementCompleted:
        return [
          _OrderCheckActionUi(
            title: (order?.isTaxInvoiceIssued ?? false)
                ? '세금계산서 발행'
                : '세금계산서 발행 준비중',
            color: (order?.isTaxInvoiceIssued ?? false)
                ? AppColors.primary
                : AppColors.darkGrey,
            type: (order?.isTaxInvoiceIssued ?? false)
                ? _OrderCheckActionType.taxInvoiceHistory
                : _OrderCheckActionType.taxInvoiceReady,
          ),
          if (isReviewable)
            const _OrderCheckActionUi(
              title: '리뷰 작성',
              color: AppColors.primary,
              type: _OrderCheckActionType.createReview,
            ),
        ];
      default:
        return const [];
    }
  }
}

enum _OrderCheckActionType {
  pendingCancel,
  orderedCancel,
  claim,
  confirmPurchase,
  taxInvoiceReady,
  claimProgress,
  taxInvoiceHistory,
  createReview,
}

class _PendingCancelProductPager extends StatefulWidget {
  const _PendingCancelProductPager({required this.orders});

  final List<PaymentOrderDto> orders;

  @override
  State<_PendingCancelProductPager> createState() =>
      _PendingCancelProductPagerState();
}

class _OrderCheckCancelSheet extends StatefulWidget {
  const _OrderCheckCancelSheet({required this.contentBuilder});

  final Widget Function(
    BuildContext context,
    void Function(bool isSubmitting) setSubmitting,
  )
  contentBuilder;

  @override
  State<_OrderCheckCancelSheet> createState() => _OrderCheckCancelSheetState();
}

class _OrderCheckCancelSheetState extends State<_OrderCheckCancelSheet> {
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.contentBuilder(context, (isSubmitting) {
          if (!mounted) return;
          setState(() {
            _isSubmitting = isSubmitting;
          });
        }),
        if (_isSubmitting)
          Positioned.fill(
            child: AbsorbPointer(
              child: Container(
                color: Colors.black.withValues(alpha: 0.12),
                child: const Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _PendingCancelProductPagerState
    extends State<_PendingCancelProductPager> {
  int _currentIndex = 0;

  String _optionLabel(PaymentOrderDto order) {
    if (order.items.isEmpty) return '상품 정보를 확인할 수 없습니다.';

    final optionName = order.items.first.optionName;
    if (order.items.length == 1) return optionName;

    return '$optionName 외 ${order.items.length - 1}개';
  }

  @override
  Widget build(BuildContext context) {
    if (widget.orders.isEmpty) {
      return Container(
        width: double.infinity,
        height: 140,
        alignment: Alignment.center,
        decoration: AppBoxStyles.borderBox,
        child: Text(
          '함께 취소되는 상품이 없습니다.',
          style: context.body.copyWith(color: AppColors.darkGrey),
        ),
      );
    }

    return Column(
      children: [
        SizedBox(
          height: 140,
          child: PageView.builder(
            itemCount: widget.orders.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              final order = widget.orders[index];
              final item = order.items.isNotEmpty ? order.items.first : null;

              return Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: AppBoxStyles.borderBox,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.network(
                          item!.thumbnailUrl ?? "",
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[200],
                              child: const Center(
                                child: Icon(Icons.broken_image),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.productName,
                            style: context.body,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            _optionLabel(order),
                            style: context.bodySmall.copyWith(
                              color: AppColors.darkGrey,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        if (widget.orders.length > 1) ...[
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int index = 0; index < widget.orders.length; index++) ...[
                if (index != 0) const SizedBox(width: 6),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: _currentIndex == index ? 14 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? AppColors.primary
                        : AppColors.mediumGrey,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ],
            ],
          ),
        ],
      ],
    );
  }
}
