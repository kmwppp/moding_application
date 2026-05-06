import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_state.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../domain/entities/business_type_model.dart';
import '../../../../domain/entities/category_request_model.dart';
import '../signup_step2_box.dart';

enum SelectCategoryType { industry, main, sub }

class SelectBusinessTypeListSection extends ConsumerWidget {
  const SelectBusinessTypeListSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);

    return SignupStep2Box(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.selectIndustryTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),

          _buildCategorySelector(
            context: context,
            ref: ref,
            notifier: notifier,
            state: state,
            type: SelectCategoryType.industry,
            selectedLabel: state.industryType.label,
            waitingText: AppStrings.pleaseSelectIndustry,
          ),

          if (state.industryType.label != AppStrings.manufacturingCompany)
            _buildCategorySelector(
              context: context,
              ref: ref,
              notifier: notifier,
              state: state,
              type: SelectCategoryType.main,
              selectedLabel: state.mainCategory.name,
              waitingText: AppStrings.pleaseSelectMainCategory,
            ),

          if (state.mainCategory.name.isNotEmpty &&
              (state.industryType.label != AppStrings.manufacturingCompany))
            _buildCategorySelector(
              context: context,
              ref: ref,
              notifier: notifier,
              state: state,
              type: SelectCategoryType.sub,
              selectedLabel: state.subCategory.name,
              waitingText: AppStrings.pleaseSelectSubCategory,
            ),
        ],
      ),
    );
  }

  Widget _buildCategorySelector({
    required BuildContext context,
    required WidgetRef ref,
    required SignupStep2ViewModel notifier,
    required SignupStep2State state,
    required SelectCategoryType type,
    required String selectedLabel,
    required String waitingText,
  }) {
    return GestureDetector(
      onTap: () =>
          _handleCategoryTap(context, ref, notifier, type, waitingText),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE0E0E0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedLabel.isEmpty ? waitingText : selectedLabel,
              style: const TextStyle(fontSize: 14),
            ),
            const Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
      ),
    );
  }

  Future<void> _handleCategoryTap(
    BuildContext context,
    WidgetRef ref,
    SignupStep2ViewModel notifier,
    SelectCategoryType type,
    String title,
  ) async {
    final state = ref.read(signupStep2ViewModelProvider);

    final list = _getCurrentList(state, type);

    if (list.isEmpty) {
      if (type == SelectCategoryType.industry) {
        await notifier.getBusinessTypeList();
      } else {
        await notifier.getCategoryList(type);
      }
    }

    await _showBusinessTypeBottomSheet(context, ref, type, title);

    FocusScope.of(context).unfocus();
  }

  List<dynamic> _getCurrentList(
    SignupStep2State state,
    SelectCategoryType type,
  ) {
    switch (type) {
      case SelectCategoryType.industry:
        return state.industryTypeList;
      case SelectCategoryType.main:
        return state.mainCategoryList;
      case SelectCategoryType.sub:
        return state.subCategoryList;
    }
  }

  String _getDisplayText(dynamic item) {
    if (item is IndustryTypeModel) return item.label;
    if (item is CategoryRequestModel) return item.name;
    return "";
  }

  Future<void> _showBusinessTypeBottomSheet(
    BuildContext context,
    WidgetRef ref,
    SelectCategoryType type,
    String title,
  ) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(signupStep2ViewModelProvider);
            final notifier = ref.read(signupStep2ViewModelProvider.notifier);

            final list = _getCurrentList(state, type);

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.pointColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    title,
                    style: context.bodyLarge.copyWith(color: Colors.white),
                  ),
                ),

                if (list.isEmpty)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: CircularProgressIndicator(),
                  )
                else
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        final item = list[index];

                        return ListTile(
                          title: Text(
                            _getDisplayText(item),
                            style: context.body.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            switch (type) {
                              case SelectCategoryType.industry:
                                notifier.changeSelectedType(industryType: item);
                                break;
                              case SelectCategoryType.main:
                                notifier.changeSelectedType(mainType: item);
                                break;
                              case SelectCategoryType.sub:
                                notifier.changeSelectedType(subType: item);
                                break;
                            }

                            Navigator.pop(context);
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                        );
                      },
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
