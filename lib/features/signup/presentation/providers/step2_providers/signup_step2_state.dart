import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/signup/domain/entities/business_type_model.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';

part 'signup_step2_state.freezed.dart';

@freezed
abstract class SignupStep2State with _$SignupStep2State {
  // 1. 이 private 생성자가 반드시 있어야 합니다. (생성된 파일의 178행에서 super._()를 호출하고 있음)
  const SignupStep2State._();

  const factory SignupStep2State({
    /// 사업자 유형
    required int businessType,

    /// 전화번호
    required String phoneNum,

    /// 전화번호 형식 체크
    required bool phoneNumValid,

    /// 인증 문자 전송
    required bool phoneNumSuccess,

    /// 인증번호
    required String certifiNum,

    /// 인증번호 6자리인지 체크
    required bool certifiNumValid,

    /// 인증 완료 유무
    required bool certifiSuccess,

    /// 사업자 등록 번호
    required String businessRegistNum,

    /// 법인 등록 번호
    required String corporationRegistNum,

    /// 우편번호
    required String zipCode,

    /// 도로명 주소
    required String mainAddress,

    /// 상세 주소
    required String detailAddress,

    /// 이미지 경로 저장
    required String imagePath,

    /// 업종 리스트
    required List<IndustryTypeModel> industryTypeList,

    /// 선택된 업종
    required IndustryTypeModel industryType,

    /// 대분류 리스트
    required List<CategoryRequestModel> mainCategoryList,

    /// 선택된 대분류
    required CategoryRequestModel mainCategory,

    /// 소분류 리스트
    required List<CategoryRequestModel> subCategoryList,

    /// 선택된 소분류
    required CategoryRequestModel subCategory,

    /// 입력한 이메일 값
    required String userEmail,

    /// 약관 동의 배열
    required List<bool> agreeList,

    /// 로그인 중 로딩창
    required bool isLoading,

    /// 포커스 이동 방지용
    required FocusNode detailAddressFocusNode,
  }) = _SignupStep2State;

  factory SignupStep2State.initial() => SignupStep2State(
    businessType: 0,
    phoneNum: "",
    phoneNumValid: false,
    phoneNumSuccess: false,

    certifiNum: '',
    certifiNumValid: false,
    certifiSuccess: false,

    businessRegistNum: '',
    corporationRegistNum: '',

    zipCode: '우편 번호',
    mainAddress: '도로명 주소',
    detailAddress: '',

    imagePath: '',

    industryTypeList: const [],
    industryType: IndustryTypeModel(value: '', label: ''),

    mainCategoryList: [],
    mainCategory: CategoryRequestModel(0, ''),

    subCategoryList: [],
    subCategory: CategoryRequestModel(0, ''),

    userEmail: '',

    agreeList: const [false, false],

    isLoading: false,
    detailAddressFocusNode: FocusNode(),
  );
}
