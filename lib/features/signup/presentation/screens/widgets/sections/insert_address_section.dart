import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kpostal/kpostal.dart';
import 'package:moding_application/core/constants/app_strings.dart';
import 'package:moding_application/core/presentation/widgets/address_search_screen.dart';
import 'package:moding_application/core/presentation/widgets/input_widget.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../signup_step2_box.dart';

class InsertAddressSection extends ConsumerWidget {
  const InsertAddressSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);

    return SignupStep2Box(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 주소 입력 타이틀
          Text(
            AppStrings.insertAddressTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),

          /// 우편번호 + 검색버튼
          Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /// 우편번호 표시 영역
              Flexible(
                flex: 2,
                child: _addressBox(context: context, text: state.zipCode),
              ),

              /// 주소 검색 버튼
              Expanded(
                child: GestureDetector(
                  onTap: () => _openAddressSearch(context, ref),
                  child: ConfirmButton(buttonTitle: AppStrings.search),
                ),
              ),
            ],
          ),

          /// 기본 주소 표시
          _addressBox(context: context, text: state.mainAddress),

          /// 상세주소 입력
          InputWidget(
            focusNode: state.detailAddressFocusNode,
            inputTitle: "",
            inputHint: AppStrings.pleaseDetailAddress,
            onChanged: notifier.changeDetailAddress,
          ),
        ],
      ),
    );
  }

  /// ---------------------------------------
  /// 주소 검색 Page (push -> pop result)
  /// ---------------------------------------
  Future<void> _openAddressSearch(BuildContext context, WidgetRef ref) async {
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);
    final state = ref.read(signupStep2ViewModelProvider);

    FocusScope.of(context).unfocus();

    final result = await Navigator.of(
      context,
      rootNavigator: true,
    ).push(MaterialPageRoute(builder: (_) => const AddressSearchScreen()));
    if (!context.mounted) return;

    if (result is Kpostal) {
      notifier.getAddress(result.postCode, result.address);
    }

    /// 모달이 완전히 닫힌 뒤 상세주소 입력으로 포커스 이동
    Future.microtask(() {
      if (!context.mounted) return;
      state.detailAddressFocusNode.requestFocus();
    });
  }

  /// ---------------------------------------
  /// 주소 표시 박스 (재사용 UI)
  /// ---------------------------------------
  Widget _addressBox({required BuildContext context, required String text}) {
    return Container(
      width: double.infinity,
      height: 40,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 14),

      decoration: BoxDecoration(
        border: Border.all(color: AppColors.dividerGrey),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),

      child: Text(
        text,
        style: context.body.copyWith(color: AppColors.darkGrey),
      ),
    );
  }
}
