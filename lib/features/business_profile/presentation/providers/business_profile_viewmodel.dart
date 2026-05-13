import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/business_profile/data/repositories/business_profile_repository_impl.dart';
import 'package:moding_application/features/business_profile/presentation/providers/business_profile_state.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'business_profile_viewmodel.g.dart';

@Riverpod()
class BusinessProfileViewModel extends _$BusinessProfileViewModel {
  @override
  BusinessProfileState build() {
    return BusinessProfileState.initial();
  }

  Future<void> getBusinessProfileInfo() async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(businessProfileRepositoryProvider);
      final response = await repository.getBusinessProfileInfo();
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, businessProfile: response);
    } catch (e) {
      debugPrint(e.toString());
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> getChangeRequestBusinessProfile() async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(businessProfileRepositoryProvider);
      final response = await repository.getChangeRequestBusinessProfile();
      if (!ref.mounted) return;
      state = state.copyWith(
        isLoading: false,
        changeRequestBusinessProfile: response,
      );
    } catch (e) {
      debugPrint(e.toString());
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> loadRequestChangeFormData() async {
    state = state.copyWith(requestFormLoading: true);
    try {
      final repository = ref.read(businessProfileRepositoryProvider);
      final mainCategories = await repository.getMainCategoryList();
      final businessProfile = await repository.getBusinessProfileInfo();
      if (!ref.mounted) return;

      state = state.copyWith(
        requestFormLoading: false,
        mainCategories: mainCategories,
        requestBusinessPhone: businessProfile.data.businessPhone ?? '',
        selectedMainCategory: null,
        selectedSubCategory: null,
        subCategories: const [],
        businessLicensePath: null,
      );
    } catch (e) {
      debugPrint(e.toString());
      if (!ref.mounted) return;
      state = state.copyWith(requestFormLoading: false);
    }
  }

  Future<void> selectMainCategory(CategoryRequestModel category) async {
    state = state.copyWith(
      selectedMainCategory: category,
      selectedSubCategory: null,
      subCategories: const [],
    );

    try {
      final repository = ref.read(businessProfileRepositoryProvider);
      final subCategories = await repository.getSubCategoryList(category.id);
      if (!ref.mounted) return;
      state = state.copyWith(subCategories: subCategories);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void selectSubCategory(CategoryRequestModel category) {
    state = state.copyWith(selectedSubCategory: category);
  }

  void updateRequestBusinessPhone(String value) {
    state = state.copyWith(requestBusinessPhone: value);
  }

  void updateBusinessLicensePath(String? path) {
    state = state.copyWith(businessLicensePath: path);
  }

  Future<ResponseModel> submitRequestChangeBusinessProfile() async {
    state = state.copyWith(requestFormSubmitting: true);
    try {
      final repository = ref.read(businessProfileRepositoryProvider);
      final response = await repository.putMyBusinessProfileInfo(
        businessPhone: state.requestBusinessPhone.trim(),
        businessCategoryId: state.selectedSubCategory?.id,
        businessLicenseFile: state.businessLicensePath,
      );
      if (!ref.mounted) return response;
      state = state.copyWith(requestFormSubmitting: false);
      return response;
    } catch (e) {
      if (!ref.mounted) {
        return const ResponseModel(
          success: false,
          message: '사업자 정보 변경 신청에 실패했습니다.',
        );
      }
      state = state.copyWith(requestFormSubmitting: false);
      return const ResponseModel(
        success: false,
        message: '사업자 정보 변경 신청에 실패했습니다.',
      );
    }
  }
}
