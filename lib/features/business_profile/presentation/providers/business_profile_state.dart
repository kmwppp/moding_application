import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/business_profile/domain/entities/business_profile_response_dto.dart';
import 'package:moding_application/features/business_profile/domain/entities/change_request_business_profile_response_dto.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';

part 'business_profile_state.freezed.dart';

@freezed
abstract class BusinessProfileState with _$BusinessProfileState {
  const BusinessProfileState._();

  const factory BusinessProfileState({
    required bool isLoading,
    BusinessProfileResponseWrapper? businessProfile,
    ChangeRequestBusinessProfileResponseWrapper? changeRequestBusinessProfile,
    @Default(true) bool requestFormLoading,
    @Default(false) bool requestFormSubmitting,
    @Default('') String requestBusinessPhone,
    @Default(<CategoryRequestModel>[])
    List<CategoryRequestModel> mainCategories,
    @Default(<CategoryRequestModel>[]) List<CategoryRequestModel> subCategories,
    CategoryRequestModel? selectedMainCategory,
    CategoryRequestModel? selectedSubCategory,
    String? businessLicensePath,
  }) = _BusinessProfileState;

  factory BusinessProfileState.initial() =>
      const BusinessProfileState(isLoading: true);
}
