import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/delivery_info/payment_complete_delivery_info_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../order/domain/entities/address_dto.dart';
import '../../../../order/presentation/providers/order_viewmodel.dart';
import '../../../../order/presentation/screens/sections/order_address_section.dart';
import '../../../../order/presentation/screens/sections/order_delivery_request_section.dart';
import 'payment_complete_order_address_page.dart';

class PaymentCompleteDeliveryInfoPage extends ConsumerStatefulWidget {
  const PaymentCompleteDeliveryInfoPage({
    super.key,
    required this.addressDto,
    required this.paymentId,
    required this.orderId,
  });

  final PaymentDeliveryAddressDto addressDto;
  final int paymentId;
  final int orderId;

  @override
  ConsumerState<PaymentCompleteDeliveryInfoPage> createState() =>
      _PaymentCompleteDeliveryInfoPageState();
}

class _PaymentCompleteDeliveryInfoPageState
    extends ConsumerState<PaymentCompleteDeliveryInfoPage> {
  AddressDto? selectedAddress;

  @override
  void initState() {
    super.initState();

    selectedAddress = AddressDto(
      id: widget.addressDto.deliveryAddressId,
      name: widget.addressDto.addressName,
      recipientName: widget.addressDto.recipientName,
      zipCode: widget.addressDto.zipCode,
      address: widget.addressDto.address,
      addressDetail: widget.addressDto.addressDetail,
      phone: widget.addressDto.phone,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
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
                    final address = selectedAddress;
                    if (address == null) {
                      CommonDialog.show(
                        context,
                        title: "배송지 확인",
                        isSuccess: false,
                        message: "변경할 배송지를 선택해주세요.",
                      );
                      return;
                    }

                    final orderState = ref.read(orderViewModelProvider);
                    final result = await ref
                        .read(
                          paymentCompleteDeliveryInfoViewModelProvider
                              .notifier,
                        )
                        .changeDeliveryAddress(
                          orderId: widget.orderId,
                          deliveryAddressId: address.id,
                          deliveryRequestType: orderState.selectedRequest,
                          deliveryRequestText: orderState.deliveryRequestText,
                        );

                    if (!context.mounted) {
                      return;
                    }

                    if (result.success) {
                      CommonDialog.show(
                        context,
                        title: "성공",
                        isSuccess: true,
                        message: "주소를 변경하였습니다.",
                        onPressed: () {
                          ref.invalidate(
                            paymentCompleteViewModelProvider(
                              widget.paymentId,
                            ),
                          );
                          context.pop();
                        },
                      );
                    } else {
                      CommonDialog.show(
                        context,
                        title: "실패",
                        isSuccess: false,
                        message: result.message,
                      );
                    }
                  },
                  child: CustomButton(
                    title: "변경하기",
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
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          "주문정보 변경",
          style: context.titleMedium.copyWith(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: const SizedBox(height: 6)),
            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () {
                  showAddressSettingPage(context);
                },
                child: OrderAddressSection(
                  name: selectedAddress?.name ?? "",
                  address: selectedAddress?.address ?? "",
                  addressDetail: selectedAddress?.addressDetail ?? "",
                  phone: selectedAddress?.phone ?? "",
                ),
              ),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 6)),
            SliverToBoxAdapter(child: OrderDeliveryRequestSection()),
          ],
        ),
      ),
    );
  }

  Future<void> showAddressSettingPage(BuildContext context) async {
    final result = await showModalBottomSheet<AddressDto>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return const PaymentCompleteOrderAddressPage();
      },
    );

    if (result != null) {
      setState(() {
        selectedAddress = result;
      });
    }
  }
}
