import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewBusinessCategorySection extends ConsumerWidget {
  const SignupNewBusinessCategorySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final notifier = ref.read(signupNewViewModelProvider.notifier);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('업종 카테고리'),
          const SizedBox(height: 12),
          SignupNewSelectField(
            label: '대분류',
            value: state.selectedMainCategory?.name,
            placeholder: '대분류를 선택해주세요.',
            onTap: () async {
              // if (state.selectedBusinessType == null) {
              //   await CommonDialog.show(
              //     context,
              //     title: '안내',
              //     message: '먼저 업종 구분을 선택해주세요.',
              //   );
              //   return;
              // }
              await notifier.loadMainCategoryList();
              if (!context.mounted) return;
              _showMainCategorySheet(context, ref);
            },
          ),
          const SizedBox(height: 12),
          SignupNewSelectField(
            label: '소분류',
            value: state.selectedSubCategory?.name,
            placeholder: '소분류를 선택해주세요.',
            onTap: () async {
              if (state.selectedMainCategory == null) {
                await CommonDialog.show(
                  context,
                  title: '안내',
                  message: '먼저 대분류를 선택해주세요.',
                );
                return;
              }
              _showSubCategorySheet(context, ref);
            },
          ),
        ],
      ),
    );
  }

  void _showMainCategorySheet(BuildContext context, WidgetRef ref) {
    final state = ref.read(signupNewViewModelProvider);
    AppBottomSheet.show(
      context: context,
      title: '업종 카테고리 대분류',
      child: SignupNewBottomSheetList(
        labels: state.mainCategoryList.map((e) => e.name).toList(),
        onTap: (index) async {
          await ref
              .read(signupNewViewModelProvider.notifier)
              .selectMainCategory(index);
        },
      ),
    );
  }

  void _showSubCategorySheet(BuildContext context, WidgetRef ref) {
    final state = ref.read(signupNewViewModelProvider);
    AppBottomSheet.show(
      context: context,
      title: '업종 카테고리 소분류',
      child: SignupNewBottomSheetList(
        labels: state.subCategoryList.map((e) => e.name).toList(),
        onTap: (index) {
          ref
              .read(signupNewViewModelProvider.notifier)
              .selectSubCategory(index);
        },
      ),
    );
  }
}
