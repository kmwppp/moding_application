import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'order_address_add_page.dart';

class OrderAddressPage extends ConsumerStatefulWidget {
  const OrderAddressPage({super.key, this.isSelectionMode = true});

  final bool isSelectionMode;

  @override
  ConsumerState<OrderAddressPage> createState() => _OrderAddressPageState();
}

class _OrderAddressPageState extends ConsumerState<OrderAddressPage> {
  @override
  void initState() {
    super.initState();
    // initState는 위젯 생성 시 딱 한 번만 실행됩니다.
    Future.microtask(() {
      ref.read(orderViewModelProvider.notifier).getAddressList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderViewModelProvider);
    final notifier = ref.read(orderViewModelProvider.notifier);
    // AddressListResponse 내부의 실제 List<AddressDto> 꺼내기
    final addressList = state.addressList?.data ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          widget.isSelectionMode ? "배송지 선택" : "배송지 관리",
          style: context.title.copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: AppColors.darkGrey),
            onPressed: context.pop,
          ),
        ],
      ),
      body: state.addressListLoading
          ? const Center(child: CircularProgressIndicator()) // 로딩바 추가
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// 데이터가 없을 때 표시
                  if (addressList.isEmpty)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Center(child: Text("등록된 배송지가 없습니다.")),
                    ),

                  /// 리스트 렌더링
                  ...addressList.map(
                    (address) => GestureDetector(
                      onTap: () {
                        if (!widget.isSelectionMode) return;
                        notifier.selectAddress(address);
                        context.pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                        ),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(14),
                          decoration: AppBoxStyles.borderBox,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${address.name} | ${address.recipientName}",
                                    style: context.titleMedium,
                                  ),
                                  if (address.isDefault) ...[
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 6,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.primary.withValues(
                                          alpha: 0.1,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        "기본",
                                        style: context.caption.copyWith(
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      // 수정 시 해당 배송지 정보를 넘겨줘야 함 (추후 필요시 인자 추가)
                                      showAddressAddPage(
                                        context,
                                        false,
                                        address.id,
                                      );
                                    },
                                    child: Container(
                                      decoration: AppBoxStyles.borderBox,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "수정",
                                        style: context.body.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "${address.address} ${address.addressDetail}",
                                style: context.body,
                              ),
                              const SizedBox(height: 4),
                              Text(address.phone, style: context.body),
                              const SizedBox(height: 6),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        notifier.resetSelectedAddress();
                        showAddressAddPage(context, true, null);
                      },
                      child: CustomButton(
                        title: "+ 배송지 추가",
                        boxColor: AppColors.primary,
                        textColor: Colors.white,
                        paddingVertical: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  void showAddressAddPage(BuildContext context, bool isAdd, int? addressId) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      // 키보드 대응을 위해 필수
      useSafeArea: true,
      // 🔥 상태바 침범 방지 핵심 속성
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        // 이제 SizedBox로 높이를 계산할 필요 없이,
        // 모달이 상태바 아래 가용한 최대 영역을 알아서 차지합니다.
        return OrderAddressAddPage(isAdd: isAdd, addressId: addressId);
      },
    );
  }
}
