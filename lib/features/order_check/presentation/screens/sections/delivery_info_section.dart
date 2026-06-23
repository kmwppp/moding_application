import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../../domain/entities/order_delivery_tracking_dto.dart';
import '../../../domain/enums/order_status.dart';
import '../../providers/order_check_viewmodel.dart';

class DeliveryInfoSection extends ConsumerWidget {
  const DeliveryInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderCheckViewModelProvider);
    final order = state.orderDetail?.data;
    final activeStep = _resolveActiveStep(order?.status);
    final showDeliveryProgress = _shouldShowDeliveryProgress(order?.status);
    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("배송정보", style: context.titleSmall),
              Spacer(),
              InkWell(
                onTap: () => _onTrackingPressed(context, ref, order?.id),
                child: TextWithChevron(
                  text: "자세히보기",
                  style: context.bodySmall,
                  iconSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          if (showDeliveryProgress) ...[
            Row(
              children: [
                Expanded(
                  child: _DeliveryProgressItem(
                    label: "배송준비중",
                    imagePath: "assets/images/icons/boxIcon.png",
                    isActive: activeStep == _DeliveryStep.preparing,
                  ),
                ),
                Expanded(
                  child: _DeliveryProgressItem(
                    label: "배송중",
                    imagePath: "assets/images/icons/shippingIcon.png",
                    isActive: activeStep == _DeliveryStep.shipping,
                  ),
                ),
                Expanded(
                  child: _DeliveryProgressItem(
                    label: "배송완료",
                    imagePath: "assets/images/icons/flagIcon.png",
                    isActive: activeStep == _DeliveryStep.completed,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
          _deliveryInfoRow(
            context,
            title: "택배사",
            content: order?.delivery?.courierName ?? "-",
          ),
          SizedBox(height: 6),
          _deliveryInfoRow(
            context,
            title: "송장번호",
            content: order?.delivery?.trackingNumber ?? "-",
          ),
          SizedBox(height: 6),
          _deliveryInfoRow(
            context,
            title: "주소",
            content:
                "(${order?.zipCode}) ${order?.address} ${order?.addressDetail ?? ''}",
          ),
          SizedBox(height: 6),
          _deliveryInfoRow(
            context,
            title: "이름",
            content: "${order?.recipientName}",
          ),
          SizedBox(height: 6),
          _deliveryInfoRow(context, title: "전화번호", content: "${order?.phone}"),
          SizedBox(height: 6),
          _deliveryInfoRow(
            context,
            title: "배송 요청사항",
            content: order?.deliveryRequest ?? "-",
          ),
        ],
      ),
    );
  }

  Future<void> _onTrackingPressed(
    BuildContext context,
    WidgetRef ref,
    int? orderId,
  ) async {
    if (orderId == null) {
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: '배송 정보를 확인할 수 없습니다.',
      );
      return;
    }

    final response = await ref
        .read(orderCheckViewModelProvider.notifier)
        .getOrderDeliveryDetail(orderId);
    if (!context.mounted) return;

    if (response == null || !response.success) {
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: response?.message.isNotEmpty == true
            ? response!.message
            : '배송 정보를 불러오지 못했습니다.',
      );
      return;
    }

    await _showTrackingDialog(context, tracking: response.data);
  }

  Future<void> _showTrackingDialog(
    BuildContext context, {
    required OrderDeliveryTrackingDto tracking,
  }) {
    final items = tracking.trackingEvents;

    return showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      tracking.trackingNumber ?? '-',
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.of(dialogContext).pop(),
                      child: const Icon(Icons.close, color: AppColors.darkGrey),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            '시간',
                            style: context.bodySmall.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '현재위치',
                            style: context.bodySmall.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '배송상태',
                            style: context.bodySmall.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                if (items.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Center(
                      child: Text(
                        '배송 추적 정보가 없습니다.',
                        style: context.bodySmall.copyWith(
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  )
                else
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (
                            int index = 0;
                            index < items.length;
                            index++
                          ) ...[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      items[index].timeString,
                                      style: context.caption.copyWith(
                                        color: AppColors.darkGrey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      items[index].where,
                                      style: context.caption,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      items[index].kind,
                                      style: context.caption.copyWith(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (index != items.length - 1)
                              Container(height: 1, color: AppColors.lightGrey),
                          ],
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _shouldShowDeliveryProgress(OrderStatus? status) {
    switch (status) {
      case OrderStatus.rejected:
      case OrderStatus.claimInProgress:
      case OrderStatus.cancelled:
        return false;
      default:
        return true;
    }
  }

  _DeliveryStep? _resolveActiveStep(OrderStatus? status) {
    switch (status) {
      case OrderStatus.ordered:
      case OrderStatus.confirmed:
        return _DeliveryStep.preparing;
      case OrderStatus.shipped:
        return _DeliveryStep.shipping;
      case OrderStatus.delivered:
      case OrderStatus.purchaseConfirmed:
      case OrderStatus.settlementCompleted:
        return _DeliveryStep.completed;
      default:
        return null;
    }
  }

  Row _deliveryInfoRow(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: context.bodySmall.copyWith(color: AppColors.darkGrey),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            content,
            style: context.bodySmall.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

enum _DeliveryStep { preparing, shipping, completed }

class _DeliveryProgressItem extends StatelessWidget {
  const _DeliveryProgressItem({
    required this.label,
    required this.imagePath,
    required this.isActive,
  });

  final String label;
  final String imagePath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : AppColors.lightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(imagePath, color: isActive ? Colors.white : null),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: context.bodySmall.copyWith(
            color: isActive ? AppColors.primary : null,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
