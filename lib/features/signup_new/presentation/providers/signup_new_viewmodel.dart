import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/login/data/repositories/login_repository_impl.dart';
import 'package:moding_application/features/login/domain/repositories/login_repository.dart';
import 'package:moding_application/features/signup_new/data/repositories/signup_new_repository_impl.dart';
import 'package:moding_application/features/signup_new/domain/entities/signup_new_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'signup_new_state.dart';

part 'signup_new_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SignupNewViewModel extends _$SignupNewViewModel {
  Timer? _duplicateDebounce;

  @override
  SignupNewState build() {
    ref.onDispose(() {
      _duplicateDebounce?.cancel();
    });
    return SignupNewState.initial();
  }

  void reset() {
    _duplicateDebounce?.cancel();
    state = SignupNewState.initial();
  }

  static final _passwordRegex = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$',
  );

  static final _emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  void updateVerifiedIdentity({
    required String name,
    required String phone,
    required String identityVerificationKey,
  }) {
    state = state.copyWith(
      verifiedName: name,
      verifiedPhone: phone,
      identityVerificationKey: identityVerificationKey,
    );
  }

  void updateLoginId(String value) {
    _duplicateDebounce?.cancel();

    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      state = state.copyWith(
        loginId: '',
        loginIdCheckStatus: LoginIdCheckStatus.idle,
      );
      return;
    }

    if (trimmed.length < 4 || trimmed.length > 50) {
      state = state.copyWith(
        loginId: trimmed,
        loginIdCheckStatus: LoginIdCheckStatus.unavailable,
      );
      return;
    }

    state = state.copyWith(
      loginId: trimmed,
      loginIdCheckStatus: LoginIdCheckStatus.checking,
    );

    _duplicateDebounce = Timer(const Duration(milliseconds: 350), () async {
      final available = await ref
          .read(signupNewRepositoryProvider)
          .checkLoginIdAvailable(trimmed);
      if (!ref.mounted) return;
      if (state.loginId != trimmed) return;
      state = state.copyWith(
        loginIdCheckStatus: available
            ? LoginIdCheckStatus.available
            : LoginIdCheckStatus.unavailable,
      );
    });
  }

  void updatePassword(String value) {
    final valid = _passwordRegex.hasMatch(value);
    state = state.copyWith(password: value, isPasswordValid: valid);
    _syncPasswordConfirm();
  }

  void updatePasswordConfirm(String value) {
    state = state.copyWith(passwordConfirm: value);
    _syncPasswordConfirm();
  }

  void _syncPasswordConfirm() {
    final matched =
        state.passwordConfirm.isNotEmpty &&
        state.password == state.passwordConfirm;
    state = state.copyWith(isPasswordConfirmMatched: matched);
  }

  void toggleRequiredTerms(bool value) {
    state = state.copyWith(agreedRequiredTerms: value);
  }

  void toggleMarketingTerms(bool value) {
    state = state.copyWith(agreedMarketingTerms: value);
  }

  String? validateStep1() {
    if (state.identityVerificationKey.trim().isEmpty ||
        state.verifiedName.trim().isEmpty ||
        state.verifiedPhone.trim().isEmpty) {
      return '본인 인증을 진행해주세요.';
    }

    if (state.loginIdCheckStatus != LoginIdCheckStatus.available) {
      return '사용 가능한 아이디인지 확인해주세요.';
    }

    if (!state.isPasswordValid) {
      return '비밀번호 형식을 확인해주세요.';
    }

    if (!state.isPasswordConfirmMatched) {
      return '비밀번호가 일치하지 않습니다.';
    }

    if (!state.agreedRequiredTerms) {
      return '필수 약관에 동의해주세요.';
    }

    return null;
  }

  void goToBusinessStep() {
    state = state.copyWith(step: SignupNewStep.businessInfo);
  }

  void goToAccountStep() {
    state = state.copyWith(step: SignupNewStep.accountInfo);
  }

  void updateBusinessRegistrationNumber(String value) {
    state = state.copyWith(businessRegistrationNumber: value);
  }

  void updateBusinessName(String value) {
    state = state.copyWith(businessName: value);
  }

  void updateOwnerName(String value) {
    state = state.copyWith(ownerName: value);
  }

  void updateAddress({
    required String zipCode,
    required String sigunguCode,
    required String address,
  }) {
    state = state.copyWith(
      zipCode: zipCode,
      sigunguCode: sigunguCode,
      address: address,
    );
  }

  void updateAddressDetail(String value) {
    state = state.copyWith(addressDetail: value);
  }

  void updateIsCorporateBusiness(bool value) {
    state = state.copyWith(
      isCorporateBusiness: value,
      corporationNumber: value ? state.corporationNumber : '',
    );
  }

  void updateCorporationNumber(String value) {
    state = state.copyWith(corporationNumber: value);
  }

  void updateIndustry(String value) {
    state = state.copyWith(industry: value);
  }

  void updateIndustryClass(String value) {
    state = state.copyWith(industryClass: value);
  }

  void updateTaxInvoiceEmail(String value) {
    state = state.copyWith(taxInvoiceEmail: value.trim());
  }

  Future<void> loadBusinessTypeList() async {
    if (state.businessTypeList.isNotEmpty) return;
    final items = await ref
        .read(signupNewRepositoryProvider)
        .getBusinessTypeList();
    if (!ref.mounted) return;
    state = state.copyWith(businessTypeList: items);
  }

  Future<void> loadMainCategoryList() async {
    if (state.mainCategoryList.isNotEmpty) return;
    final items = await ref
        .read(signupNewRepositoryProvider)
        .getMainCategoryList();
    if (!ref.mounted) return;
    state = state.copyWith(mainCategoryList: items);
  }

  Future<void> selectBusinessType(int index) async {
    final selected = state.businessTypeList[index];
    state = state.copyWith(
      selectedBusinessType: selected,
      clearSelectedMainCategory: true,
      mainCategoryList: const [],
      clearSelectedSubCategory: true,
      subCategoryList: const [],
    );
    await loadMainCategoryList();
  }

  Future<void> selectMainCategory(int index) async {
    final selected = state.mainCategoryList[index];
    state = state.copyWith(
      selectedMainCategory: selected,
      clearSelectedSubCategory: true,
      subCategoryList: const [],
      clearBusinessCategoryId: true,
    );

    final items = await ref
        .read(signupNewRepositoryProvider)
        .getSubCategoryList(selected.id);
    if (!ref.mounted) return;
    state = state.copyWith(subCategoryList: items);
  }

  void selectSubCategory(int index) {
    final selected = state.subCategoryList[index];
    state = state.copyWith(
      selectedSubCategory: selected,
      businessCategoryId: selected.id,
    );
  }

  Future<void> pickBusinessLicenseImage(ImageSource source) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: source, imageQuality: 85);
    if (image == null) return;

    state = state.copyWith(businessLicenseImagePath: image.path);
  }

  void removeBusinessLicenseImage() {
    state = state.copyWith(businessLicenseImagePath: '');
  }

  void updateIsAlcoholBuyer(bool value) {
    state = state.copyWith(isAlcoholBuyer: value);
  }

  String? validateStep2() {
    if (state.businessRegistrationNumber.trim().isEmpty) {
      return '사업자 등록번호를 입력해주세요.';
    }
    if (state.businessName.trim().isEmpty) {
      return '상호명을 입력해주세요.';
    }
    if (state.ownerName.trim().isEmpty) {
      return '대표자명을 입력해주세요.';
    }
    if (state.zipCode.isEmpty || state.address.isEmpty) {
      return '사업장주소를 입력해주세요.';
    }
    if (state.addressDetail.trim().isEmpty) {
      return '사업장 주소 상세를 입력해주세요.';
    }
    if (state.isCorporateBusiness && state.corporationNumber.trim().isEmpty) {
      return '법인번호를 입력해주세요.';
    }
    if (state.industry.trim().isEmpty) {
      return '업태를 입력해주세요.';
    }
    if (state.industryClass.trim().isEmpty) {
      return '업종을 입력해주세요.';
    }
    if (!_emailRegex.hasMatch(state.taxInvoiceEmail)) {
      return '올바른 이메일 형식을 입력해주세요.';
    }
    // if (state.selectedBusinessType == null) {
    //   return '업종 구분을 선택해주세요.';
    // }
    if (state.selectedMainCategory == null) {
      return '업종 카테고리 대분류를 선택해주세요.';
    }
    if (state.selectedSubCategory == null || state.businessCategoryId == null) {
      return '업종 카테고리 소분류를 선택해주세요.';
    }
    if (state.businessLicenseImagePath.trim().isEmpty) {
      return '사업자 등록증 파일을 첨부해주세요.';
    }
    return null;
  }

  Future<ResponseModel> submitSignUp() async {
    state = state.copyWith(isLoading: true);
    try {
      final request = SignupNewRequest(
        loginId: state.loginId,
        email: state.taxInvoiceEmail,
        password: state.password,
        businessNumber: state.businessRegistrationNumber,
        businessName: state.businessName,
        ownerName: state.ownerName,
        zipCode: state.zipCode,
        sigunguCode: state.sigunguCode,
        address: state.address,
        addressDetail: state.addressDetail,
        industry: state.industry,
        industryClass: state.industryClass,
        corporateNumber: state.isCorporateBusiness
            ? state.corporationNumber
            : '',
        businessCategoryId: state.businessCategoryId!,
        businessLicenseFilePath: state.businessLicenseImagePath,
        isAlcoholBuyer: state.isAlcoholBuyer,
        identityVerificationKey: state.identityVerificationKey,
      );

      return await ref.read(signupNewRepositoryProvider).signUp(request);
    } finally {
      if (ref.mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }

  Future<bool> loginAfterSignUp() async {
    try {
      final repository = ref.read(loginRepositoryProvider);
      final token = await repository.executeLogin(
        state.loginId,
        state.password,
      );

      await ref
          .read(tokenStorageProvider)
          .saveTokens(
            accessToken: token.accessToken,
            refreshToken: token.refreshToken,
          );

      await _sendFcmToken(repository);
      return true;
    } catch (e) {
      appLog('회원가입 후 자동 로그인 실패: $e');
      return false;
    }
  }

  Future<void> _sendFcmToken(LoginRepository repository) async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null || fcmToken.isEmpty) return;

    for (int attempt = 0; attempt < 2; attempt++) {
      try {
        final response = await repository.patchFcmToken(fcmToken);
        if (response.success) {
          appLog("FCM 토큰 서버 전송 완료");
          return;
        }

        appLog("FCM 토큰 서버 전송 실패 응답: ${response.message}");
      } catch (e) {
        appLog("FCM 토큰 서버 전송 실패: $e");
      }

      if (attempt == 0) {
        appLog("FCM 토큰 서버 전송 재시도");
      }
    }
  }
}
