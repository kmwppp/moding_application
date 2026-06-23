import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kpostal/kpostal.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../core/presentation/widgets/address_search_screen.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/theme/app_box_styles.dart';
import '../../../../core/theme/app_input_decoration.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/phone_number_formatter.dart';

class OrderAddressAddPage extends ConsumerStatefulWidget {
  const OrderAddressAddPage({
    super.key,
    required this.isAdd,
    required this.addressId, // 수정 모드일 때 필요한 ID
  });

  final bool isAdd;
  final int? addressId;

  @override
  ConsumerState<OrderAddressAddPage> createState() =>
      _OrderAddressAddPageState();
}

class _OrderAddressAddPageState extends ConsumerState<OrderAddressAddPage> {
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
            .read(orderViewModelProvider.notifier)
            .getAddressDetail(widget.addressId!);
        final detail = ref.read(orderViewModelProvider).selectedAddress;
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
    final state = ref.watch(orderViewModelProvider);
    final notifier = ref.read(orderViewModelProvider.notifier);
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
                            label: "배송지명",
                            hint: "배송지 명을 입력해주세요.",
                            controller: _placeNameController,
                            inputType: TextInputType.text,
                            onChanged: (String val) {
                              notifier.updatePlaceName(val);
                            },
                          ),
                          const Divider(height: 0),
                          _buildInputRow(
                            label: "수령인",
                            hint: "이름을 입력해주세요.",
                            controller: _recipientController,
                            inputType: TextInputType.text,
                            onChanged: (String val) {
                              notifier.updateRecipientName(val);
                            },
                          ),
                          const Divider(height: 0),

                          /// 주소 검색 영역
                          _buildAddressRow(detail?.address, notifier),

                          _buildInputRow(
                            label: "",
                            hint: "상세 주소를 입력해주세요.",
                            controller: _detailAddressController,
                            inputType: TextInputType.text,
                            onChanged: (String val) {
                              notifier.updateAddressDetail(val);
                            },
                          ),
                          const Divider(height: 0),
                          _buildInputRow(
                            label: "연락처",
                            hint: "010-0000-0000",
                            controller: _phoneController,
                            inputType: TextInputType.phone,
                            onChanged: (String val) {
                              notifier.updatePhone(val);
                            },
                          ),

                          /// 기본 배송지 체크박스
                          _buildDefaultCheckbox(
                            detail?.isDefault ?? false,
                            notifier,
                            isLocked:
                                !widget.isAdd && (detail?.isDefault ?? false),
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
  Widget _buildInputRow({
    required String label,
    required String hint,
    required TextEditingController controller,
    required TextInputType inputType,
    required Function(String) onChanged,
  }) {
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
              keyboardType: inputType,
              // 👍 추가
              inputFormatters: label == "연락처" ? [PhoneNumberFormatter()] : [],
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
                  final sigunguCode = result.bcode.length >= 5
                      ? result.bcode.substring(0, 5)
                      : '';
                  notifier.updateAddress(
                    result.address,
                    result.postCode,
                    sigunguCode,
                  );
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

  Widget _buildDefaultCheckbox(
    bool isDefault,
    dynamic notifier, {
    required bool isLocked,
  }) {
    return Row(
      children: [
        Checkbox(
          value: isDefault,
          onChanged: isLocked
              ? null
              : (val) => notifier.updateIsDefault(val ?? false),
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
                final confirmed = await CommonDialog.showChoice(
                  context,
                  title: "삭제",
                  isSuccess: false,
                  message: "배송지를 삭제하시겠습니까?",
                  primaryButtonText: "삭제",
                  secondaryButtonText: "취소",
                );
                if (confirmed != true || !mounted) return;
                final result = await notifier.deleteAddress(widget.addressId!);
                if (result.success) {
                  _handleSuccess("주소를 삭제했습니다.", "삭제 완료");
                  return;
                }
                if (!mounted) return;
                await CommonDialog.show(
                  context,
                  title: "오류",
                  isSuccess: false,
                  message: result.message.isNotEmpty
                      ? result.message
                      : "주소 삭제에 실패했습니다.",
                );
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
