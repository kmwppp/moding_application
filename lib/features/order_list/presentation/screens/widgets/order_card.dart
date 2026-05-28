import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/features/order_list/presentation/providers/order_list_viewmodel.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';
import 'package:moding_application/features/review_list/presentation/screens/widgets/create_review_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/presentation/widgets/loading_indicator.dart';
import '../../../../../core/presentation/widgets/modal/app_bottom_sheet.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/delivery_util.dart';
import '../../../../../core/utils/holiday_util.dart';
import '../../../../order_check/domain/enums/order_payment_method.dart';
import '../../../domain/entities/order_list_response_dto.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
    required this.onRefreshRequested,
  });

  final OrderListItemDto order;
  final VoidCallback onRefreshRequested;

  @override
  Widget build(BuildContext context) {
    final statusUi = _OrderStatusUi.fromStatus(
      order.status,
      isReviewable: order.isReviewable ?? false,
      isTaxInvoiceIssued: order.isTaxInvoiceIssued ?? false,
      isVirtualAccountPayment:
          order.payment?.paymentMethod == OrderPaymentMethod.virtualAccount,
    );
    final product = order.items.isNotEmpty ? order.items.first : null;
    final bodyColor = statusUi.isMuted ? AppColors.darkGrey : null;
    final deliveryText = order.status == 'PAYMENT_PENDING'
        ? _formatPaymentPendingDeliveryText(product)
        : '';

    final card = Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                statusUi.label,
                style: context.body.copyWith(color: statusUi.statusColor),
              ),
              const Spacer(),
              TextWithChevron(
                text: "상세보기",
                style: context.caption.copyWith(color: AppColors.darkGrey),
                iconSize: 10,
                onTap: () => _onDetailPressed(context, order),
              ),
            ],
          ),
          if (deliveryText.isNotEmpty) ...[
            Text(
              deliveryText,
              style: context.body.copyWith(
                color: order.status == "PAYMENT_PENDING"
                    ? AppColors.pointColor
                    : bodyColor,
              ),
            ),
            const SizedBox(height: 6),
          ],
          SizedBox(
            height: statusUi.actions.isEmpty ? 80 : 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    context.push("/product/${order.items[0].productId}");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.network(
                        order.items[0].thumbnailImageUrl,
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
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _productName(product),
                        style: context.body.copyWith(color: bodyColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        _optionText(order.items),
                        style: context.bodySmall.copyWith(
                          color: statusUi.isMuted ? AppColors.darkGrey : null,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (statusUi.actions.isNotEmpty) ...[
            SizedBox(height: 10),
            _OrderActionButtons(
              actions: statusUi.actions,
              order: order,
              onRefreshRequested: onRefreshRequested,
            ),
          ],
        ],
      ),
    );

    if (!statusUi.isBlurred) return card;

    return Opacity(opacity: 0.45, child: card);
  }

  static String _productName(OrderListProductItemDto? product) {
    if (product == null) return '상품명';
    return product.productName;
  }

  static String _optionText(List<OrderListProductItemDto> items) {
    if (items.isEmpty) return '옵션';

    final firstProduct = items.first;
    if (items.length == 1) {
      return '${firstProduct.optionName} / ${firstProduct.quantity}개';
    }

    return '${firstProduct.optionName} 외 ${items.length - 1}개';
  }

  static String _formatPaymentPendingDeliveryText(
    OrderListProductItemDto? product,
  ) {
    if (product == null || product.shippingCutoffTime.isEmpty) {
      return '';
    }

    final holidays = HolidayUtil.applySubstituteHolidays(
      HolidayUtil.getKoreanHolidays(DateTime.now().year),
    );
    final deliveryInfo = DeliveryUtil.calculateDeliveryInfo(
      shippingLeadTime: product.shippingLeadTime,
      deliveryDays: product.deliveryDays,
      weekendDeliveryAvailability: product.weekendDeliveryAvailability,
      isSameDayShipping: product.isSameDayShipping,
      shippingCutoffTime: product.shippingCutoffTime,
      holidays: holidays,
    );
    final deliveryDate = deliveryInfo.deliveryDate;

    if (deliveryDate == null) return '';

    final cutoffHour = _formatCutoffHour(product.shippingCutoffTime);
    final weekday = _weekdayLabel(deliveryDate.weekday);
    return '오늘 $cutoffHour까지 입금시 ${deliveryDate.month}월 ${deliveryDate.day}일 도착($weekday) 예정';
  }

  static String _formatCutoffHour(String shippingCutoffTime) {
    final parts = shippingCutoffTime.split(':');
    if (parts.isEmpty) return '';

    final hour = int.tryParse(parts.first);
    if (hour == null) return parts.first;

    return '$hour시';
  }

  static String _weekdayLabel(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return '월';
      case DateTime.tuesday:
        return '화';
      case DateTime.wednesday:
        return '수';
      case DateTime.thursday:
        return '목';
      case DateTime.friday:
        return '금';
      case DateTime.saturday:
        return '토';
      case DateTime.sunday:
        return '일';
      default:
        return '';
    }
  }

  Future<void> _onDetailPressed(
    BuildContext context,
    OrderListItemDto order,
  ) async {
    debugPrint('상세보기: orderId=${order.id}');
    final result = await context.push<bool>('/check_order/${order.id}');
    if (result == true) {
      onRefreshRequested();
    }
  }
}

class _OrderActionButtons extends StatelessWidget {
  const _OrderActionButtons({
    required this.actions,
    required this.order,
    required this.onRefreshRequested,
  });

  final List<_OrderActionUi> actions;
  final OrderListItemDto order;
  final VoidCallback onRefreshRequested;

  @override
  Widget build(BuildContext context) {
    if (actions.length == 1) {
      return _OrderActionButton(
        action: actions.first,
        order: order,
        onRefreshRequested: onRefreshRequested,
      );
    }

    return Row(
      children: [
        for (int index = 0; index < actions.length; index++) ...[
          if (index != 0) const SizedBox(width: 6),
          Expanded(
            child: _OrderActionButton(
              action: actions[index],
              order: order,
              onRefreshRequested: onRefreshRequested,
            ),
          ),
        ],
      ],
    );
  }
}

class _OrderStatusUi {
  const _OrderStatusUi({
    required this.label,
    required this.statusColor,
    required this.actions,
    this.isMuted = false,
    this.isBlurred = false,
  });

  final String label;
  final Color statusColor;
  final List<_OrderActionUi> actions;
  final bool isMuted;
  final bool isBlurred;

  factory _OrderStatusUi.fromStatus(
    String status, {
    required bool isReviewable,
    required bool isTaxInvoiceIssued,
    required bool isVirtualAccountPayment,
  }) {
    switch (status) {
      case 'PAYMENT_PENDING':
        return const _OrderStatusUi(
          label: '입금확인중',
          statusColor: AppColors.darkGrey,
          actions: [
            _OrderActionUi(
              title: '주문 취소하기',
              color: AppColors.primary,
              type: _OrderActionType.pendingCancel,
            ),
          ],
        );
      case 'ORDERED':
        return const _OrderStatusUi(
          label: '주문확인중',
          statusColor: AppColors.pointColor,
          actions: [
            _OrderActionUi(
              title: '주문 취소하기',
              color: AppColors.primary,
              type: _OrderActionType.orderedCancel,
            ),
          ],
        );
      case 'CONFIRMED':
        return const _OrderStatusUi(
          label: '배송준비중',
          statusColor: Colors.red,
          actions: [],
        );
      case 'REJECT':
      case 'REJECTED':
        return const _OrderStatusUi(
          label: '주문거절',
          statusColor: AppColors.darkGrey,
          actions: [],
          isMuted: true,
          isBlurred: true,
        );
      case 'SHIPPED':
        return const _OrderStatusUi(
          label: '배송중',
          statusColor: AppColors.pointColor,
          actions: [],
        );
      case 'DELIVERED':
        return const _OrderStatusUi(
          label: '배송완료',
          statusColor: AppColors.primary,
          actions: [
            _OrderActionUi(
              title: '클레임 접수',
              color: AppColors.pointColor,
              type: _OrderActionType.claim,
            ),
            _OrderActionUi(
              title: '구매확정',
              color: AppColors.primary,
              type: _OrderActionType.confirmPurchase,
            ),
          ],
        );
      case 'PURCHASE_CONFIRMED':
        return _OrderStatusUi(
          label: '배송완료',
          statusColor: AppColors.primary,
          actions: [
            if (isVirtualAccountPayment)
              const _OrderActionUi(
                title: '세금계산서 발행 준비중',
                color: AppColors.darkGrey,
                type: _OrderActionType.taxInvoiceReady,
              ),
            if (isReviewable)
              const _OrderActionUi(
                title: '리뷰 작성',
                color: AppColors.primary,
                type: _OrderActionType.createReview,
              ),
          ],
        );
      case 'CLAIM_IN_PROGRESS':
        return const _OrderStatusUi(
          label: '배송완료',
          statusColor: AppColors.primary,
          actions: [
            _OrderActionUi(
              title: '클레임 진행 내역 확인',
              color: AppColors.primary,
              type: _OrderActionType.claimProgress,
            ),
          ],
        );
      case 'SETTLEMENT_COMPLETED':
        return _OrderStatusUi(
          label: '배송완료',
          statusColor: AppColors.primary,
          actions: [
            if (isVirtualAccountPayment)
              _OrderActionUi(
                title: isTaxInvoiceIssued ? '세금계산서 발행' : '세금계산서 발행 준비중',
                color: isTaxInvoiceIssued
                    ? AppColors.primary
                    : AppColors.darkGrey,
                type: isTaxInvoiceIssued
                    ? _OrderActionType.taxInvoiceHistory
                    : _OrderActionType.taxInvoiceReady,
              ),
            if (isReviewable)
              const _OrderActionUi(
                title: '리뷰 작성',
                color: AppColors.primary,
                type: _OrderActionType.createReview,
              ),
          ],
        );
      case 'CANCELLED':
        return const _OrderStatusUi(
          label: '주문 취소',
          statusColor: AppColors.darkGrey,
          actions: [],
          isMuted: true,
          isBlurred: true,
        );
      default:
        return const _OrderStatusUi(
          label: '배송완료',
          statusColor: AppColors.primary,
          actions: [],
        );
    }
  }
}

class _OrderActionButton extends ConsumerWidget {
  const _OrderActionButton({
    required this.action,
    required this.order,
    required this.onRefreshRequested,
  });

  final _OrderActionUi action;
  final OrderListItemDto order;
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
        paddingVertical: 6,
        textStyle: context.bodySmall.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Future<void> _handleAction(
    BuildContext context,
    _OrderActionType type,
    OrderListItemDto order,
    WidgetRef ref,
  ) async {
    switch (type) {
      case _OrderActionType.orderedCancel:
        _onOrderedCancelPressed(context, order, ref);
        break;
      case _OrderActionType.pendingCancel:
        _onPendingCancelPressed(context, order, ref);
        break;
      case _OrderActionType.claim:
        await _onClaimPressed(context, order);
        break;
      case _OrderActionType.confirmPurchase:
        _onConfirmPurchasePressed(context, order, ref);
        break;
      case _OrderActionType.taxInvoiceReady:
        _onTaxInvoiceReadyPressed(context, order);
        break;
      case _OrderActionType.claimProgress:
        _onClaimProgressPressed(context, order);
        break;
      case _OrderActionType.taxInvoiceHistory:
        await _onTaxInvoiceHistoryPressed(context, order, ref);
        break;
      case _OrderActionType.createReview:
        _onCreateReviewPressed(context, order);
        break;
    }
  }

  void _onOrderedCancelPressed(
    BuildContext context,
    OrderListItemDto order,
    WidgetRef ref,
  ) {
    debugPrint('주문 취소하기: orderId=${order.id}');
    showOrderedCancelBottomSheet(context, ref);
  }

  void _onPendingCancelPressed(
    BuildContext context,
    OrderListItemDto order,
    WidgetRef ref,
  ) async {
    debugPrint('주문 취소하기: orderId=${order.id}');

    final paymentInfoWrapper = await ref
        .read(orderListViewModelProvider.notifier)
        .getPaymentInfo(order.payment!.paymentId);
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

    showPendingCancelBottomSheet(context, paymentInfoWrapper, ref);
  }

  Future<void> _onClaimPressed(
    BuildContext context,
    OrderListItemDto order,
  ) async {
    debugPrint('클레임 신청: orderId=${order.id}');
    final result = await context.push<bool>('/send_claim/${order.id}');
    if (result == true) {
      onRefreshRequested();
    }
  }

  void _onConfirmPurchasePressed(
    BuildContext context,
    OrderListItemDto order,
    WidgetRef ref,
  ) {
    showConfirmPurchaseBottomSheet(context, ref);
  }

  void _onTaxInvoiceReadyPressed(BuildContext context, OrderListItemDto order) {
    debugPrint('세금계산서 발행 준비중: orderId=${order.id}');
    CommonDialog.show(
      context,
      title: "발행중",
      isSuccess: false,
      message: "세금계산서가 발행중입니다.",
    );
  }

  void _onClaimProgressPressed(BuildContext context, OrderListItemDto order) {
    debugPrint('클레임 진행 내역 확인: orderId=${order.id}');
    context.push('/claim_check/${order.claimId}');
  }

  Future<void> _onTaxInvoiceHistoryPressed(
    BuildContext context,
    OrderListItemDto order,
    WidgetRef ref,
  ) async {
    debugPrint('세금계산서 발행 내역: orderId=${order.id}');
    final taxInvoice = await ref
        .read(orderListViewModelProvider.notifier)
        .getOrderTaxInvoiceUrl(order.id);
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

  void _onCreateReviewPressed(BuildContext context, OrderListItemDto order) {
    AppBottomSheet.show(
      context: context,
      title: '리뷰 작성',
      child: CreateReviewBottomSheet(
        parentContext: context,
        orderId: order.id,
        productName: OrderCard._productName(
          order.items.isNotEmpty ? order.items.first : null,
        ),
        optionName: order.items.isNotEmpty
            ? OrderCard._optionText(order.items)
            : '',
        onCreated: onRefreshRequested,
      ),
    );
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
  ) {
    AppBottomSheet.show(
      context: context,
      title: "주문 취소",
      child: _OrderCancelSheet(
        contentBuilder: (context, setSubmitting) => SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("주문을 취소하시겠습니까?", style: context.titleMedium),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: AppBoxStyles.borderBox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "입금전 상품은 함께 취소되며, 결제 금액은 환불됩니다.",
                        style: context.bodySmall,
                      ),
                      SizedBox(height: 4),
                      Text(
                        "취소한 상품은 장바구니에서 다시 확인하실 수 있습니다.",
                        style: context.bodySmall,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "환불은 영업일 기준 1~2일 소요될 수 있습니다.",
                        style: context.caption.copyWith(color: Colors.red),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                if (wrapper.data.orders.length > 1) ...[
                  SizedBox(height: 20),
                  Text(
                    "함께 취소되는 상품",
                    style: context.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  _PendingCancelProductPager(orders: wrapper.data.orders),
                  SizedBox(height: 50),
                ] else
                  SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          setSubmitting(true);
                          final result = await ref
                              .read(orderListViewModelProvider.notifier)
                              .deletePaymentInfo(order.payment!.paymentId);
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
                    SizedBox(width: 6),
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

  void showOrderedCancelBottomSheet(BuildContext context, WidgetRef ref) {
    AppBottomSheet.show(
      context: context,
      title: "주문 취소",
      child: _OrderCancelSheet(
        contentBuilder: (context, setSubmitting) => SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("주문을 취소하시겠습니까?", style: context.titleMedium),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: AppBoxStyles.borderBox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text("배송이 시작되면 취소가 불가능하며,", style: context.body),
                      SizedBox(height: 4),
                      Text("취소 시 결제 금액은 환불됩니다.", style: context.body),
                      SizedBox(height: 20),
                      Text(
                        "환불은 영업일 기준 1~2일 소요될 수 있습니다.",
                        style: context.caption.copyWith(color: Colors.red),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          setSubmitting(true);
                          final result = await ref
                              .read(orderListViewModelProvider.notifier)
                              .deleteOrderInfo(order.id);
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
                    SizedBox(width: 6),
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

  void showConfirmPurchaseBottomSheet(BuildContext context, WidgetRef ref) {
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
                            .patchPurchaseConfirm(order.id);
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

class _PendingCancelProductPager extends StatefulWidget {
  const _PendingCancelProductPager({required this.orders});

  final List<PaymentOrderDto> orders;

  @override
  State<_PendingCancelProductPager> createState() =>
      _PendingCancelProductPagerState();
}

class _OrderCancelSheet extends StatefulWidget {
  const _OrderCancelSheet({required this.contentBuilder});

  final Widget Function(
    BuildContext context,
    void Function(bool isSubmitting) setSubmitting,
  )
  contentBuilder;

  @override
  State<_OrderCancelSheet> createState() => _OrderCancelSheetState();
}

class _OrderCancelSheetState extends State<_OrderCancelSheet> {
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
                child: const Center(child: LoadingIndicator()),
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
              setState(() => _currentIndex = index);
            },
            itemBuilder: (context, index) {
              final order = widget.orders[index];
              final thumbnailImageUrl = order.items.isEmpty
                  ? null
                  : order.items.first.thumbnailUrl;
              final productName = order.items.isEmpty
                  ? '상품 정보를 확인할 수 없습니다.'
                  : order.items.first.productName;
              final optionName = order.items.isEmpty
                  ? '상품 정보를 확인할 수 없습니다.'
                  : _optionLabel(order);

              return Container(
                decoration: AppBoxStyles.borderBox,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:
                            thumbnailImageUrl == null ||
                                thumbnailImageUrl.isEmpty
                            ? Container(
                                width: 80,
                                height: 80,
                                color: Colors.grey[200],
                                child: const Center(
                                  child: Icon(Icons.broken_image),
                                ),
                              )
                            : Image.network(
                                thumbnailImageUrl,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.grey[200],
                                    child: const Center(
                                      child: Icon(Icons.broken_image),
                                    ),
                                  );
                                },
                              ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: context.body,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          optionName,
                          style: context.bodySmall.copyWith(
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        if (widget.orders.length > 1) ...[
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.orders.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: _currentIndex == index ? 14 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? AppColors.primary
                      : AppColors.mediumGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _OrderActionUi {
  const _OrderActionUi({
    required this.title,
    required this.color,
    required this.type,
  });

  final String title;
  final Color color;
  final _OrderActionType type;
}

enum _OrderActionType {
  pendingCancel,
  orderedCancel,
  claim,
  confirmPurchase,
  taxInvoiceReady,
  claimProgress,
  taxInvoiceHistory,
  createReview,
}
