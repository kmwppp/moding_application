import '../../domain/entities/signup_new_business_type_item.dart';
import '../../domain/entities/signup_new_category_item.dart';

enum SignupNewStep { accountInfo, businessInfo }

enum LoginIdCheckStatus { idle, checking, available, unavailable }

class SignupNewState {
  final SignupNewStep step;
  final bool isLoading;
  final String verifiedName;
  final String verifiedPhone;
  final String loginId;
  final String password;
  final String passwordConfirm;
  final LoginIdCheckStatus loginIdCheckStatus;
  final bool isPasswordValid;
  final bool isPasswordConfirmMatched;
  final bool agreedRequiredTerms;
  final bool agreedMarketingTerms;
  final String businessRegistrationNumber;
  final String businessName;
  final String ownerName;
  final String zipCode;
  final String address;
  final String addressDetail;
  final String corporationNumber;
  final String industry;
  final String industryClass;
  final String taxInvoiceEmail;
  final List<SignupNewBusinessTypeItem> businessTypeList;
  final SignupNewBusinessTypeItem? selectedBusinessType;
  final List<SignupNewCategoryItem> mainCategoryList;
  final SignupNewCategoryItem? selectedMainCategory;
  final List<SignupNewCategoryItem> subCategoryList;
  final SignupNewCategoryItem? selectedSubCategory;
  final String businessLicenseImagePath;

  const SignupNewState({
    required this.step,
    required this.isLoading,
    required this.verifiedName,
    required this.verifiedPhone,
    required this.loginId,
    required this.password,
    required this.passwordConfirm,
    required this.loginIdCheckStatus,
    required this.isPasswordValid,
    required this.isPasswordConfirmMatched,
    required this.agreedRequiredTerms,
    required this.agreedMarketingTerms,
    required this.businessRegistrationNumber,
    required this.businessName,
    required this.ownerName,
    required this.zipCode,
    required this.address,
    required this.addressDetail,
    required this.corporationNumber,
    required this.industry,
    required this.industryClass,
    required this.taxInvoiceEmail,
    required this.businessTypeList,
    required this.selectedBusinessType,
    required this.mainCategoryList,
    required this.selectedMainCategory,
    required this.subCategoryList,
    required this.selectedSubCategory,
    required this.businessLicenseImagePath,
  });

  factory SignupNewState.initial() {
    return const SignupNewState(
      step: SignupNewStep.accountInfo,
      isLoading: false,
      verifiedName: '',
      verifiedPhone: '',
      loginId: '',
      password: '',
      passwordConfirm: '',
      loginIdCheckStatus: LoginIdCheckStatus.idle,
      isPasswordValid: false,
      isPasswordConfirmMatched: false,
      agreedRequiredTerms: false,
      agreedMarketingTerms: false,
      businessRegistrationNumber: '',
      businessName: '',
      ownerName: '',
      zipCode: '',
      address: '',
      addressDetail: '',
      corporationNumber: '',
      industry: '',
      industryClass: '',
      taxInvoiceEmail: '',
      businessTypeList: [],
      selectedBusinessType: null,
      mainCategoryList: [],
      selectedMainCategory: null,
      subCategoryList: [],
      selectedSubCategory: null,
      businessLicenseImagePath: '',
    );
  }

  SignupNewState copyWith({
    SignupNewStep? step,
    bool? isLoading,
    String? verifiedName,
    String? verifiedPhone,
    String? loginId,
    String? password,
    String? passwordConfirm,
    LoginIdCheckStatus? loginIdCheckStatus,
    bool? isPasswordValid,
    bool? isPasswordConfirmMatched,
    bool? agreedRequiredTerms,
    bool? agreedMarketingTerms,
    String? businessRegistrationNumber,
    String? businessName,
    String? ownerName,
    String? zipCode,
    String? address,
    String? addressDetail,
    String? corporationNumber,
    String? industry,
    String? industryClass,
    String? taxInvoiceEmail,
    List<SignupNewBusinessTypeItem>? businessTypeList,
    SignupNewBusinessTypeItem? selectedBusinessType,
    bool clearSelectedBusinessType = false,
    List<SignupNewCategoryItem>? mainCategoryList,
    SignupNewCategoryItem? selectedMainCategory,
    bool clearSelectedMainCategory = false,
    List<SignupNewCategoryItem>? subCategoryList,
    SignupNewCategoryItem? selectedSubCategory,
    bool clearSelectedSubCategory = false,
    String? businessLicenseImagePath,
  }) {
    return SignupNewState(
      step: step ?? this.step,
      isLoading: isLoading ?? this.isLoading,
      verifiedName: verifiedName ?? this.verifiedName,
      verifiedPhone: verifiedPhone ?? this.verifiedPhone,
      loginId: loginId ?? this.loginId,
      password: password ?? this.password,
      passwordConfirm: passwordConfirm ?? this.passwordConfirm,
      loginIdCheckStatus: loginIdCheckStatus ?? this.loginIdCheckStatus,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      isPasswordConfirmMatched:
          isPasswordConfirmMatched ?? this.isPasswordConfirmMatched,
      agreedRequiredTerms: agreedRequiredTerms ?? this.agreedRequiredTerms,
      agreedMarketingTerms: agreedMarketingTerms ?? this.agreedMarketingTerms,
      businessRegistrationNumber:
          businessRegistrationNumber ?? this.businessRegistrationNumber,
      businessName: businessName ?? this.businessName,
      ownerName: ownerName ?? this.ownerName,
      zipCode: zipCode ?? this.zipCode,
      address: address ?? this.address,
      addressDetail: addressDetail ?? this.addressDetail,
      corporationNumber: corporationNumber ?? this.corporationNumber,
      industry: industry ?? this.industry,
      industryClass: industryClass ?? this.industryClass,
      taxInvoiceEmail: taxInvoiceEmail ?? this.taxInvoiceEmail,
      businessTypeList: businessTypeList ?? this.businessTypeList,
      selectedBusinessType: clearSelectedBusinessType
          ? null
          : (selectedBusinessType ?? this.selectedBusinessType),
      mainCategoryList: mainCategoryList ?? this.mainCategoryList,
      selectedMainCategory: clearSelectedMainCategory
          ? null
          : (selectedMainCategory ?? this.selectedMainCategory),
      subCategoryList: subCategoryList ?? this.subCategoryList,
      selectedSubCategory: clearSelectedSubCategory
          ? null
          : (selectedSubCategory ?? this.selectedSubCategory),
      businessLicenseImagePath:
          businessLicenseImagePath ?? this.businessLicenseImagePath,
    );
  }
}
