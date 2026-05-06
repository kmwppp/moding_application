import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kpostal/kpostal.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/widgets/address_search_screen.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/theme/app_box_styles.dart';
import '../../../../core/theme/app_input_decoration.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../providers/cart_order_viewmodel.dart';

class CartOrderAddressAddPage extends ConsumerStatefulWidget {
  const CartOrderAddressAddPage({
    super.key,
    required this.isAdd,
    required this.addressId, // 수정 모드일 때 필요한 ID
  });

  final bool isAdd;
  final int? addressId;

  @override
  ConsumerState<CartOrderAddressAddPage> createState() =>
      _CartOrderAddressAddPageState();
}

class _CartOrderAddressAddPageState
    extends ConsumerState<CartOrderAddressAddPage> {
  late TextEditingController _placeNameController; // 배송지명 전용
  late TextEditingController _recipientController;
  late TextEditingController _detailAddressController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _placeNameController = TextEditingController();
    _recipientController = TextEditingController();
    _detailAddressController = TextEditingController();
    _phoneController = TextEditingController();

    if (!widget.isAdd && widget.addressId != null) {
      Future.microtask(() async {
        await ref
            .read(cartOrderViewModelProvider.notifier)
            .getAddressDetail(widget.addressId!);
        final detail = ref.read(cartOrderViewModelProvider).selectedAddress;
        if (detail != null) {
          _placeNameController.text = detail.name;
          _recipientController.text = detail.recipientName;
          _detailAddressController.text = detail.addressDetail;
          _phoneController.text = detail.phone;
        }
      });
    }
  }

  @override
  void dispose() {
    _placeNameController.dispose();
    _recipientController.dispose();
    _detailAddressController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  // 성공 시 공통 처리 로직
  void _handleSuccess(String message, String title) {
    if (!mounted) return;
    context.pop(); // 현재 페이지 닫기

    // Future.microtask(() {
    //   if (!mounted) return;
    //   AppBottomSheet.show(
    //     context: context,
    //     title: title,
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.symmetric(vertical: 30),
    //           child: Text(message, style: context.bodyLarge),
    //         ),
    //       ],
    //     ),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cartOrderViewModelProvider);
    final notifier = ref.read(cartOrderViewModelProvider.notifier);
    final detail = state.selectedAddress;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          widget.isAdd ? "배송지 등록" : "배송지 수정",
          style: context.title.copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: AppColors.darkGrey),
            onPressed: context.pop,
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: AppBoxStyles.borderBox,
                      child: Column(
                        children: [
                          _buildInputRow(
                            "배송지명",
                            "배송지 명을 입력해주세요.",
                            _placeNameController,
                            (val) => notifier.updatePlaceName(val),
                          ),
                          const Divider(height: 0),
                          _buildInputRow(
                            "수령인",
                            "이름을 입력해주세요.",
                            _recipientController,
                            (val) => notifier.updateRecipientName(val),
                          ),
                          const Divider(height: 0),

                          /// 주소 검색 영역
                          _buildAddressRow(detail?.address, notifier),

                          _buildInputRow(
                            "",
                            "상세 주소를 입력해주세요.",
                            _detailAddressController,
                            (val) => notifier.updateAddressDetail(val),
                          ),
                          const Divider(height: 0),
                          _buildInputRow(
                            "연락처",
                            "010-0000-0000",
                            _phoneController,
                            (val) => notifier.updatePhone(val),
                          ),

                          /// 기본 배송지 체크박스
                          _buildDefaultCheckbox(
                            detail?.isDefault ?? false,
                            notifier,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                _buildActionButtons(notifier),
              ],
            ),
    );
  }

  // 입력 행 빌더
  Widget _buildInputRow(
    String label,
    String hint,
    TextEditingController controller,
    Function(String) onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          if (label.isNotEmpty)
            Expanded(flex: 2, child: Text(label, style: context.body)),
          if (label.isEmpty) const Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 6,
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              style: context.bodySmall,
              decoration: AppInputDecoration.focusDecoration(hint),
            ),
          ),
        ],
      ),
    );
  }

  // 주소 검색 행 빌더
  Widget _buildAddressRow(String? address, dynamic notifier) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(flex: 1, child: Text("주소", style: context.body)),
          Expanded(
            flex: 6,
            child: GestureDetector(
              onTap: () async {
                final result = await Navigator.push<Kpostal>(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AddressSearchScreen(),
                  ),
                );
                if (result != null) {
                  notifier.updateAddress(result.address, result.postCode);
                }
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: AppBoxStyles.focusContainerDecoration(),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        address ?? "주소를 검색해주세요.",
                        style: context.bodySmall,
                      ),
                    ),
                    Image.asset(
                      "assets/images/icons/searchBarIcon.png",
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDefaultCheckbox(bool isDefault, dynamic notifier) {
    return Row(
      children: [
        Checkbox(
          value: isDefault,
          onChanged: (val) => notifier.updateIsDefault(val ?? false),
          visualDensity: VisualDensity.compact,
          activeColor: AppColors.primary,
        ),
        Text('기본 배송지로 저장', style: context.body),
      ],
    );
  }

  // 하단 버튼 영역
  Widget _buildActionButtons(dynamic notifier) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      child: Column(
        children: [
          GestureDetector(
            onTap: () async {
              final result = widget.isAdd
                  ? await notifier
                        .postAddress() // 추가 API 호출 필요
                  : await notifier.putAddress(widget.addressId!);

              if (result.success) {
                _handleSuccess(
                  "주소가 ${widget.isAdd ? '추가' : '수정'}되었습니다.",
                  "${widget.isAdd ? '추가' : '수정'} 완료",
                );
              }
            },
            child: CustomButton(
              title: widget.isAdd ? "추가" : "저장",
              paddingVertical: 8,
              boxColor: AppColors.primary,
              textColor: Colors.white,
            ),
          ),
          if (!widget.isAdd) ...[
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () async {
                final result = await notifier.deleteAddress(widget.addressId!);
                if (result.success) _handleSuccess("주소를 삭제했습니다.", "삭제 완료");
              },
              child: CustomButton(
                title: "삭제",
                paddingVertical: 8,
                boxColor: Colors.red,
                textColor: Colors.white,
                borderColor: Colors.red,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
