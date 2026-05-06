import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/features/login/data/repositories/login_repository_impl.dart';
import 'package:moding_application/features/signup/data/repositories/signup_repository_impl.dart';
import 'package:moding_application/features/signup/domain/entities/business_type_model.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';
import 'package:moding_application/features/signup/domain/entities/signup_response_model.dart';
import 'package:moding_application/features/signup/presentation/providers/step1_providers/signup_viewmodel.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_state.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/sections/select_business_type_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/signup_info.dart';

part 'signup_step2_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SignupStep2ViewModel extends _$SignupStep2ViewModel {
  @override
  SignupStep2State build() {
    return SignupStep2State.initial();
  }

  /// ------------------------------------------------
  /// 사업자 유형 선택시 로직
  /// ------------------------------------------------
  void changeBusinessType(int type) {
    int nowType = state.businessType;
    if (nowType == type) {
      state = state.copyWith(businessType: 0);
    } else {
      state = state.copyWith(businessType: type);
    }
  }

  /// ------------------------------------------------
  /// 전화번호 입력시 로직
  /// - 010-1234-5678 형식을 반드시 유지함
  /// ------------------------------------------------
  void changePhoneNum(String phoneNum) {
    final chk = RegExp(r'^010-\d{3,4}-\d{4}$').hasMatch(phoneNum);
    state = state.copyWith(phoneNum: phoneNum, phoneNumValid: chk);
  }

  void getAddress(String zipCode, String mainAddress) {
    state = state.copyWith(zipCode: zipCode, mainAddress: mainAddress);
  }

  void changeDetailAddress(String detailAddress) {
    state = state.copyWith(detailAddress: detailAddress);
  }

  void clickedSendSMS() {
    state = state.copyWith(phoneNumSuccess: true);
  }

  /// ------------------------------------------------
  /// 안증번호 입력시 로직
  /// - 인증번호 6자리일 때 활성화
  /// ------------------------------------------------
  void changeCertifiNum(String num) {
    bool valid = num.length == 6;
    state = state.copyWith(certifiNum: num, certifiNumValid: valid);
  }

  void changeBusinessNum(String value) {
    state = state.copyWith(businessRegistNum: value);
  }

  void changeCorporationNum(String value) {
    state = state.copyWith(corporationRegistNum: value);
  }

  Future<void> pickBusinessLicenseImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (image != null) {
      state = state.copyWith(imagePath: image.path);
    }
  }

  void clickedCertifiBtn() {
    state = state.copyWith(certifiSuccess: true);
  }

  void changeEmail(String email) {
    state = state.copyWith(userEmail: email);
  }

  bool get isAllAgreed => state.agreeList.every((e) => e);

  // 전체 동의 클릭
  void toggleAll(bool value) {
    state = state.copyWith(
      agreeList: List.generate(state.agreeList.length, (_) => value),
    );
  }

  void changeAgreement(int index, bool value) {
    // 기존 리스트를 복사하여 새로운 리스트 생성
    final newList = List<bool>.from(state.agreeList);
    newList[index] = value;

    state = state.copyWith(agreeList: newList);
  }

  ///-------------------------------
  /// 회원가입 확인 절차
  /// 1. 사업자 유형을 선택했는지 확인한다.
  /// 2. 사업자 인증이 완료 되었는지 확인한다.
  /// 3. 본인 인증이 완료되었는지 확인한다.
  /// 4. 사업자 등록증이 정상적으로 등록되었는지 확인한다.
  /// 5. 주소가 정상적으로 입력되었는지 확인한다.
  /// 6. 업종을 선택하지 않았을 때
  /// 7. 수신 메일이 입력되어있는지 (정규식으로 포멧확인) 확인한다.
  /// 8. 약관 동의가 전체 완료되어 있는지 확인한다.
  ///-------------------------------
  SignupResponseModel _validChk() {
    // 첫번째 사업자 유형을 선택하지 않았으면 state.businessType 0
    if (state.businessType == 0) {
      return SignupResponseModel(success: false, message: "사업자 유형을 선택해주세요.");
    }

    // 사업자 인증이 되었는지로 변경
    if (state.businessRegistNum == '') {
      return SignupResponseModel(success: false, message: "사업자 인증을 진행해주세요.");
    }

    // 본인인증을 완료하지 않았으면
    if (!state.certifiSuccess) {
      return SignupResponseModel(success: false, message: "본인 인증을 진행해주세요.");
    }

    // 사업자 등록증이 업로드 되지 않았을 때
    if (state.imagePath == "") {
      return SignupResponseModel(success: false, message: "사업자 등록증을 첨부해주세요.");
    }

    // 주소가 입력되지 않았을 때
    if (state.zipCode == "" || state.mainAddress == "") {
      return SignupResponseModel(success: false, message: "주소를 입력해주세요.");
    }

    // 업종을 선택하지 않았을 떄
    String industry = state.industryType.label;
    if (industry == "") {
      return SignupResponseModel(success: false, message: "업종 구분을 선택해주세요.");
    }

    // 제조사가 아닐 경우에만 소분류(subCategory)까지 체크
    if (industry != "제조사") {
      if (state.subCategory.name == "") {
        return SignupResponseModel(success: false, message: "세부 업종을 선택해주세요.");
      }
    }

    // 수신 메일이 입력되지 않았고, 이메일 형식이 아닐 때
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(state.userEmail)) {
      return SignupResponseModel(success: false, message: "올바른 이메일을 입력해주세요.");
    }

    // 약관이 전체적으로 동의가 되었는지 확인.
    if (state.agreeList.contains(false)) {
      return SignupResponseModel(success: false, message: "필수 약관에 동의해주세요.");
    }

    return SignupResponseModel(success: true, message: "입력을 모두 완료했습니다.");
  }

  void changeSelectedType({
    IndustryTypeModel? industryType,
    CategoryRequestModel? mainType,
    CategoryRequestModel? subType,
  }) {
    if (industryType != null) {
      state = state.copyWith(industryType: industryType);
    } else if (mainType != null) {
      state = state.copyWith(mainCategory: mainType);
    } else {
      state = state.copyWith(subCategory: subType!);
    }
  }

  Future<void> getBusinessTypeList() async {
    try {
      final repository = ref.read(signupRepositoryProvider);
      state = state.copyWith(
        industryTypeList: await repository.getBusinessTypeList(),
      );
    } catch (e) {
      debugPrint("에러 : $e");
    }
  }

  Future<void> getCategoryList(SelectCategoryType type) async {
    try {
      final repository = ref.read(signupRepositoryProvider);
      switch (type) {
        case SelectCategoryType.industry:
          state = state.copyWith(
            industryTypeList: await repository.getBusinessTypeList(),
          );
        case SelectCategoryType.main:
          state = state.copyWith(
            mainCategoryList: await repository.getMainCategoryList(),
          );
        case SelectCategoryType.sub:
          state = state.copyWith(
            subCategoryList: await repository.getSubCategoryList(
              state.mainCategory.id,
            ),
          );
      }
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<SignupResponseModel?> executeSignUp() async {
    SignupResponseModel validResult = _validChk();

    if (!validResult.success) {
      return validResult;
    }

    try {
      state = state.copyWith(isLoading: true);

      final repository = ref.read(signupRepositoryProvider);
      final loginRepository = ref.read(loginRepositoryProvider);
      final signupState = ref.read(signupViewModelProvider);
      final step2State = state;

      final info = SignupInfo(
        loginId: signupState.id,
        email: step2State.userEmail,
        phone: step2State.phoneNum,
        password: signupState.password,
        businessType: step2State.industryType.value,
        businessName: '모딩회사1',
        ownerName: '김철수',
        zipCode: step2State.zipCode,
        address: step2State.mainAddress,
        addressDetail: step2State.detailAddress,
        businessNumber: step2State.businessRegistNum,
        corporateNumber: step2State.industryType.label == "제조사"
            ? ""
            : step2State.corporationRegistNum,
        businessCategoryId: step2State.subCategory.id,
        businessLicenseFile: step2State.imagePath,
      );

      // 1. 회원가입 실행 (409 에러가 나도 Repository에서 모델을 반환하므로 catch로 안 감)
      final result = await repository.executeSignUp(info);

      // 2. 결과 판단
      if (result.success) {
        final token = await loginRepository.executeLogin(
          signupState.id,
          signupState.password,
        );
        await ref
            .read(tokenStorageProvider)
            .saveTokens(
              accessToken: token.accessToken,
              refreshToken: token.refreshToken,
            );
        debugPrint("성공");
        return result; // 성공 결과 반환
      } else {
        // 서버에서 success: false를 보낸 경우 (중복 번호 등)
        debugPrint("실패: ${result.message}");
        return result; // 실패 결과(메시지 포함) 그대로 반환
      }
    } catch (e) {
      // 예상치 못한 코드 에러나 시스템 에러
      debugPrint("심각한 오류: $e");
      return SignupResponseModel(success: false, message: "처리 중 오류가 발생했습니다.");
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}
