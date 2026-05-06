// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_step2_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupStep2State {

/// 사업자 유형
 int get businessType;/// 전화번호
 String get phoneNum;/// 전화번호 형식 체크
 bool get phoneNumValid;/// 인증 문자 전송
 bool get phoneNumSuccess;/// 인증번호
 String get certifiNum;/// 인증번호 6자리인지 체크
 bool get certifiNumValid;/// 인증 완료 유무
 bool get certifiSuccess;/// 사업자 등록 번호
 String get businessRegistNum;/// 법인 등록 번호
 String get corporationRegistNum;/// 우편번호
 String get zipCode;/// 도로명 주소
 String get mainAddress;/// 상세 주소
 String get detailAddress;/// 이미지 경로 저장
 String get imagePath;/// 업종 리스트
 List<IndustryTypeModel> get industryTypeList;/// 선택된 업종
 IndustryTypeModel get industryType;/// 대분류 리스트
 List<CategoryRequestModel> get mainCategoryList;/// 선택된 대분류
 CategoryRequestModel get mainCategory;/// 소분류 리스트
 List<CategoryRequestModel> get subCategoryList;/// 선택된 소분류
 CategoryRequestModel get subCategory;/// 입력한 이메일 값
 String get userEmail;/// 약관 동의 배열
 List<bool> get agreeList;/// 로그인 중 로딩창
 bool get isLoading;/// 포커스 이동 방지용
 FocusNode get detailAddressFocusNode;
/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStep2StateCopyWith<SignupStep2State> get copyWith => _$SignupStep2StateCopyWithImpl<SignupStep2State>(this as SignupStep2State, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupStep2State&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum)&&(identical(other.phoneNumValid, phoneNumValid) || other.phoneNumValid == phoneNumValid)&&(identical(other.phoneNumSuccess, phoneNumSuccess) || other.phoneNumSuccess == phoneNumSuccess)&&(identical(other.certifiNum, certifiNum) || other.certifiNum == certifiNum)&&(identical(other.certifiNumValid, certifiNumValid) || other.certifiNumValid == certifiNumValid)&&(identical(other.certifiSuccess, certifiSuccess) || other.certifiSuccess == certifiSuccess)&&(identical(other.businessRegistNum, businessRegistNum) || other.businessRegistNum == businessRegistNum)&&(identical(other.corporationRegistNum, corporationRegistNum) || other.corporationRegistNum == corporationRegistNum)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.mainAddress, mainAddress) || other.mainAddress == mainAddress)&&(identical(other.detailAddress, detailAddress) || other.detailAddress == detailAddress)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&const DeepCollectionEquality().equals(other.industryTypeList, industryTypeList)&&(identical(other.industryType, industryType) || other.industryType == industryType)&&const DeepCollectionEquality().equals(other.mainCategoryList, mainCategoryList)&&(identical(other.mainCategory, mainCategory) || other.mainCategory == mainCategory)&&const DeepCollectionEquality().equals(other.subCategoryList, subCategoryList)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&const DeepCollectionEquality().equals(other.agreeList, agreeList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.detailAddressFocusNode, detailAddressFocusNode) || other.detailAddressFocusNode == detailAddressFocusNode));
}


@override
int get hashCode => Object.hashAll([runtimeType,businessType,phoneNum,phoneNumValid,phoneNumSuccess,certifiNum,certifiNumValid,certifiSuccess,businessRegistNum,corporationRegistNum,zipCode,mainAddress,detailAddress,imagePath,const DeepCollectionEquality().hash(industryTypeList),industryType,const DeepCollectionEquality().hash(mainCategoryList),mainCategory,const DeepCollectionEquality().hash(subCategoryList),subCategory,userEmail,const DeepCollectionEquality().hash(agreeList),isLoading,detailAddressFocusNode]);

@override
String toString() {
  return 'SignupStep2State(businessType: $businessType, phoneNum: $phoneNum, phoneNumValid: $phoneNumValid, phoneNumSuccess: $phoneNumSuccess, certifiNum: $certifiNum, certifiNumValid: $certifiNumValid, certifiSuccess: $certifiSuccess, businessRegistNum: $businessRegistNum, corporationRegistNum: $corporationRegistNum, zipCode: $zipCode, mainAddress: $mainAddress, detailAddress: $detailAddress, imagePath: $imagePath, industryTypeList: $industryTypeList, industryType: $industryType, mainCategoryList: $mainCategoryList, mainCategory: $mainCategory, subCategoryList: $subCategoryList, subCategory: $subCategory, userEmail: $userEmail, agreeList: $agreeList, isLoading: $isLoading, detailAddressFocusNode: $detailAddressFocusNode)';
}


}

/// @nodoc
abstract mixin class $SignupStep2StateCopyWith<$Res>  {
  factory $SignupStep2StateCopyWith(SignupStep2State value, $Res Function(SignupStep2State) _then) = _$SignupStep2StateCopyWithImpl;
@useResult
$Res call({
 int businessType, String phoneNum, bool phoneNumValid, bool phoneNumSuccess, String certifiNum, bool certifiNumValid, bool certifiSuccess, String businessRegistNum, String corporationRegistNum, String zipCode, String mainAddress, String detailAddress, String imagePath, List<IndustryTypeModel> industryTypeList, IndustryTypeModel industryType, List<CategoryRequestModel> mainCategoryList, CategoryRequestModel mainCategory, List<CategoryRequestModel> subCategoryList, CategoryRequestModel subCategory, String userEmail, List<bool> agreeList, bool isLoading, FocusNode detailAddressFocusNode
});




}
/// @nodoc
class _$SignupStep2StateCopyWithImpl<$Res>
    implements $SignupStep2StateCopyWith<$Res> {
  _$SignupStep2StateCopyWithImpl(this._self, this._then);

  final SignupStep2State _self;
  final $Res Function(SignupStep2State) _then;

/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessType = null,Object? phoneNum = null,Object? phoneNumValid = null,Object? phoneNumSuccess = null,Object? certifiNum = null,Object? certifiNumValid = null,Object? certifiSuccess = null,Object? businessRegistNum = null,Object? corporationRegistNum = null,Object? zipCode = null,Object? mainAddress = null,Object? detailAddress = null,Object? imagePath = null,Object? industryTypeList = null,Object? industryType = null,Object? mainCategoryList = null,Object? mainCategory = null,Object? subCategoryList = null,Object? subCategory = null,Object? userEmail = null,Object? agreeList = null,Object? isLoading = null,Object? detailAddressFocusNode = null,}) {
  return _then(_self.copyWith(
businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as int,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,phoneNumValid: null == phoneNumValid ? _self.phoneNumValid : phoneNumValid // ignore: cast_nullable_to_non_nullable
as bool,phoneNumSuccess: null == phoneNumSuccess ? _self.phoneNumSuccess : phoneNumSuccess // ignore: cast_nullable_to_non_nullable
as bool,certifiNum: null == certifiNum ? _self.certifiNum : certifiNum // ignore: cast_nullable_to_non_nullable
as String,certifiNumValid: null == certifiNumValid ? _self.certifiNumValid : certifiNumValid // ignore: cast_nullable_to_non_nullable
as bool,certifiSuccess: null == certifiSuccess ? _self.certifiSuccess : certifiSuccess // ignore: cast_nullable_to_non_nullable
as bool,businessRegistNum: null == businessRegistNum ? _self.businessRegistNum : businessRegistNum // ignore: cast_nullable_to_non_nullable
as String,corporationRegistNum: null == corporationRegistNum ? _self.corporationRegistNum : corporationRegistNum // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,mainAddress: null == mainAddress ? _self.mainAddress : mainAddress // ignore: cast_nullable_to_non_nullable
as String,detailAddress: null == detailAddress ? _self.detailAddress : detailAddress // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,industryTypeList: null == industryTypeList ? _self.industryTypeList : industryTypeList // ignore: cast_nullable_to_non_nullable
as List<IndustryTypeModel>,industryType: null == industryType ? _self.industryType : industryType // ignore: cast_nullable_to_non_nullable
as IndustryTypeModel,mainCategoryList: null == mainCategoryList ? _self.mainCategoryList : mainCategoryList // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,mainCategory: null == mainCategory ? _self.mainCategory : mainCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel,subCategoryList: null == subCategoryList ? _self.subCategoryList : subCategoryList // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,subCategory: null == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,agreeList: null == agreeList ? _self.agreeList : agreeList // ignore: cast_nullable_to_non_nullable
as List<bool>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,detailAddressFocusNode: null == detailAddressFocusNode ? _self.detailAddressFocusNode : detailAddressFocusNode // ignore: cast_nullable_to_non_nullable
as FocusNode,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupStep2State].
extension SignupStep2StatePatterns on SignupStep2State {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupStep2State value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupStep2State value)  $default,){
final _that = this;
switch (_that) {
case _SignupStep2State():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupStep2State value)?  $default,){
final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int businessType,  String phoneNum,  bool phoneNumValid,  bool phoneNumSuccess,  String certifiNum,  bool certifiNumValid,  bool certifiSuccess,  String businessRegistNum,  String corporationRegistNum,  String zipCode,  String mainAddress,  String detailAddress,  String imagePath,  List<IndustryTypeModel> industryTypeList,  IndustryTypeModel industryType,  List<CategoryRequestModel> mainCategoryList,  CategoryRequestModel mainCategory,  List<CategoryRequestModel> subCategoryList,  CategoryRequestModel subCategory,  String userEmail,  List<bool> agreeList,  bool isLoading,  FocusNode detailAddressFocusNode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
return $default(_that.businessType,_that.phoneNum,_that.phoneNumValid,_that.phoneNumSuccess,_that.certifiNum,_that.certifiNumValid,_that.certifiSuccess,_that.businessRegistNum,_that.corporationRegistNum,_that.zipCode,_that.mainAddress,_that.detailAddress,_that.imagePath,_that.industryTypeList,_that.industryType,_that.mainCategoryList,_that.mainCategory,_that.subCategoryList,_that.subCategory,_that.userEmail,_that.agreeList,_that.isLoading,_that.detailAddressFocusNode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int businessType,  String phoneNum,  bool phoneNumValid,  bool phoneNumSuccess,  String certifiNum,  bool certifiNumValid,  bool certifiSuccess,  String businessRegistNum,  String corporationRegistNum,  String zipCode,  String mainAddress,  String detailAddress,  String imagePath,  List<IndustryTypeModel> industryTypeList,  IndustryTypeModel industryType,  List<CategoryRequestModel> mainCategoryList,  CategoryRequestModel mainCategory,  List<CategoryRequestModel> subCategoryList,  CategoryRequestModel subCategory,  String userEmail,  List<bool> agreeList,  bool isLoading,  FocusNode detailAddressFocusNode)  $default,) {final _that = this;
switch (_that) {
case _SignupStep2State():
return $default(_that.businessType,_that.phoneNum,_that.phoneNumValid,_that.phoneNumSuccess,_that.certifiNum,_that.certifiNumValid,_that.certifiSuccess,_that.businessRegistNum,_that.corporationRegistNum,_that.zipCode,_that.mainAddress,_that.detailAddress,_that.imagePath,_that.industryTypeList,_that.industryType,_that.mainCategoryList,_that.mainCategory,_that.subCategoryList,_that.subCategory,_that.userEmail,_that.agreeList,_that.isLoading,_that.detailAddressFocusNode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int businessType,  String phoneNum,  bool phoneNumValid,  bool phoneNumSuccess,  String certifiNum,  bool certifiNumValid,  bool certifiSuccess,  String businessRegistNum,  String corporationRegistNum,  String zipCode,  String mainAddress,  String detailAddress,  String imagePath,  List<IndustryTypeModel> industryTypeList,  IndustryTypeModel industryType,  List<CategoryRequestModel> mainCategoryList,  CategoryRequestModel mainCategory,  List<CategoryRequestModel> subCategoryList,  CategoryRequestModel subCategory,  String userEmail,  List<bool> agreeList,  bool isLoading,  FocusNode detailAddressFocusNode)?  $default,) {final _that = this;
switch (_that) {
case _SignupStep2State() when $default != null:
return $default(_that.businessType,_that.phoneNum,_that.phoneNumValid,_that.phoneNumSuccess,_that.certifiNum,_that.certifiNumValid,_that.certifiSuccess,_that.businessRegistNum,_that.corporationRegistNum,_that.zipCode,_that.mainAddress,_that.detailAddress,_that.imagePath,_that.industryTypeList,_that.industryType,_that.mainCategoryList,_that.mainCategory,_that.subCategoryList,_that.subCategory,_that.userEmail,_that.agreeList,_that.isLoading,_that.detailAddressFocusNode);case _:
  return null;

}
}

}

/// @nodoc


class _SignupStep2State extends SignupStep2State {
  const _SignupStep2State({required this.businessType, required this.phoneNum, required this.phoneNumValid, required this.phoneNumSuccess, required this.certifiNum, required this.certifiNumValid, required this.certifiSuccess, required this.businessRegistNum, required this.corporationRegistNum, required this.zipCode, required this.mainAddress, required this.detailAddress, required this.imagePath, required final  List<IndustryTypeModel> industryTypeList, required this.industryType, required final  List<CategoryRequestModel> mainCategoryList, required this.mainCategory, required final  List<CategoryRequestModel> subCategoryList, required this.subCategory, required this.userEmail, required final  List<bool> agreeList, required this.isLoading, required this.detailAddressFocusNode}): _industryTypeList = industryTypeList,_mainCategoryList = mainCategoryList,_subCategoryList = subCategoryList,_agreeList = agreeList,super._();
  

/// 사업자 유형
@override final  int businessType;
/// 전화번호
@override final  String phoneNum;
/// 전화번호 형식 체크
@override final  bool phoneNumValid;
/// 인증 문자 전송
@override final  bool phoneNumSuccess;
/// 인증번호
@override final  String certifiNum;
/// 인증번호 6자리인지 체크
@override final  bool certifiNumValid;
/// 인증 완료 유무
@override final  bool certifiSuccess;
/// 사업자 등록 번호
@override final  String businessRegistNum;
/// 법인 등록 번호
@override final  String corporationRegistNum;
/// 우편번호
@override final  String zipCode;
/// 도로명 주소
@override final  String mainAddress;
/// 상세 주소
@override final  String detailAddress;
/// 이미지 경로 저장
@override final  String imagePath;
/// 업종 리스트
 final  List<IndustryTypeModel> _industryTypeList;
/// 업종 리스트
@override List<IndustryTypeModel> get industryTypeList {
  if (_industryTypeList is EqualUnmodifiableListView) return _industryTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_industryTypeList);
}

/// 선택된 업종
@override final  IndustryTypeModel industryType;
/// 대분류 리스트
 final  List<CategoryRequestModel> _mainCategoryList;
/// 대분류 리스트
@override List<CategoryRequestModel> get mainCategoryList {
  if (_mainCategoryList is EqualUnmodifiableListView) return _mainCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainCategoryList);
}

/// 선택된 대분류
@override final  CategoryRequestModel mainCategory;
/// 소분류 리스트
 final  List<CategoryRequestModel> _subCategoryList;
/// 소분류 리스트
@override List<CategoryRequestModel> get subCategoryList {
  if (_subCategoryList is EqualUnmodifiableListView) return _subCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subCategoryList);
}

/// 선택된 소분류
@override final  CategoryRequestModel subCategory;
/// 입력한 이메일 값
@override final  String userEmail;
/// 약관 동의 배열
 final  List<bool> _agreeList;
/// 약관 동의 배열
@override List<bool> get agreeList {
  if (_agreeList is EqualUnmodifiableListView) return _agreeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_agreeList);
}

/// 로그인 중 로딩창
@override final  bool isLoading;
/// 포커스 이동 방지용
@override final  FocusNode detailAddressFocusNode;

/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupStep2StateCopyWith<_SignupStep2State> get copyWith => __$SignupStep2StateCopyWithImpl<_SignupStep2State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupStep2State&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum)&&(identical(other.phoneNumValid, phoneNumValid) || other.phoneNumValid == phoneNumValid)&&(identical(other.phoneNumSuccess, phoneNumSuccess) || other.phoneNumSuccess == phoneNumSuccess)&&(identical(other.certifiNum, certifiNum) || other.certifiNum == certifiNum)&&(identical(other.certifiNumValid, certifiNumValid) || other.certifiNumValid == certifiNumValid)&&(identical(other.certifiSuccess, certifiSuccess) || other.certifiSuccess == certifiSuccess)&&(identical(other.businessRegistNum, businessRegistNum) || other.businessRegistNum == businessRegistNum)&&(identical(other.corporationRegistNum, corporationRegistNum) || other.corporationRegistNum == corporationRegistNum)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.mainAddress, mainAddress) || other.mainAddress == mainAddress)&&(identical(other.detailAddress, detailAddress) || other.detailAddress == detailAddress)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&const DeepCollectionEquality().equals(other._industryTypeList, _industryTypeList)&&(identical(other.industryType, industryType) || other.industryType == industryType)&&const DeepCollectionEquality().equals(other._mainCategoryList, _mainCategoryList)&&(identical(other.mainCategory, mainCategory) || other.mainCategory == mainCategory)&&const DeepCollectionEquality().equals(other._subCategoryList, _subCategoryList)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&const DeepCollectionEquality().equals(other._agreeList, _agreeList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.detailAddressFocusNode, detailAddressFocusNode) || other.detailAddressFocusNode == detailAddressFocusNode));
}


@override
int get hashCode => Object.hashAll([runtimeType,businessType,phoneNum,phoneNumValid,phoneNumSuccess,certifiNum,certifiNumValid,certifiSuccess,businessRegistNum,corporationRegistNum,zipCode,mainAddress,detailAddress,imagePath,const DeepCollectionEquality().hash(_industryTypeList),industryType,const DeepCollectionEquality().hash(_mainCategoryList),mainCategory,const DeepCollectionEquality().hash(_subCategoryList),subCategory,userEmail,const DeepCollectionEquality().hash(_agreeList),isLoading,detailAddressFocusNode]);

@override
String toString() {
  return 'SignupStep2State(businessType: $businessType, phoneNum: $phoneNum, phoneNumValid: $phoneNumValid, phoneNumSuccess: $phoneNumSuccess, certifiNum: $certifiNum, certifiNumValid: $certifiNumValid, certifiSuccess: $certifiSuccess, businessRegistNum: $businessRegistNum, corporationRegistNum: $corporationRegistNum, zipCode: $zipCode, mainAddress: $mainAddress, detailAddress: $detailAddress, imagePath: $imagePath, industryTypeList: $industryTypeList, industryType: $industryType, mainCategoryList: $mainCategoryList, mainCategory: $mainCategory, subCategoryList: $subCategoryList, subCategory: $subCategory, userEmail: $userEmail, agreeList: $agreeList, isLoading: $isLoading, detailAddressFocusNode: $detailAddressFocusNode)';
}


}

/// @nodoc
abstract mixin class _$SignupStep2StateCopyWith<$Res> implements $SignupStep2StateCopyWith<$Res> {
  factory _$SignupStep2StateCopyWith(_SignupStep2State value, $Res Function(_SignupStep2State) _then) = __$SignupStep2StateCopyWithImpl;
@override @useResult
$Res call({
 int businessType, String phoneNum, bool phoneNumValid, bool phoneNumSuccess, String certifiNum, bool certifiNumValid, bool certifiSuccess, String businessRegistNum, String corporationRegistNum, String zipCode, String mainAddress, String detailAddress, String imagePath, List<IndustryTypeModel> industryTypeList, IndustryTypeModel industryType, List<CategoryRequestModel> mainCategoryList, CategoryRequestModel mainCategory, List<CategoryRequestModel> subCategoryList, CategoryRequestModel subCategory, String userEmail, List<bool> agreeList, bool isLoading, FocusNode detailAddressFocusNode
});




}
/// @nodoc
class __$SignupStep2StateCopyWithImpl<$Res>
    implements _$SignupStep2StateCopyWith<$Res> {
  __$SignupStep2StateCopyWithImpl(this._self, this._then);

  final _SignupStep2State _self;
  final $Res Function(_SignupStep2State) _then;

/// Create a copy of SignupStep2State
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessType = null,Object? phoneNum = null,Object? phoneNumValid = null,Object? phoneNumSuccess = null,Object? certifiNum = null,Object? certifiNumValid = null,Object? certifiSuccess = null,Object? businessRegistNum = null,Object? corporationRegistNum = null,Object? zipCode = null,Object? mainAddress = null,Object? detailAddress = null,Object? imagePath = null,Object? industryTypeList = null,Object? industryType = null,Object? mainCategoryList = null,Object? mainCategory = null,Object? subCategoryList = null,Object? subCategory = null,Object? userEmail = null,Object? agreeList = null,Object? isLoading = null,Object? detailAddressFocusNode = null,}) {
  return _then(_SignupStep2State(
businessType: null == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as int,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,phoneNumValid: null == phoneNumValid ? _self.phoneNumValid : phoneNumValid // ignore: cast_nullable_to_non_nullable
as bool,phoneNumSuccess: null == phoneNumSuccess ? _self.phoneNumSuccess : phoneNumSuccess // ignore: cast_nullable_to_non_nullable
as bool,certifiNum: null == certifiNum ? _self.certifiNum : certifiNum // ignore: cast_nullable_to_non_nullable
as String,certifiNumValid: null == certifiNumValid ? _self.certifiNumValid : certifiNumValid // ignore: cast_nullable_to_non_nullable
as bool,certifiSuccess: null == certifiSuccess ? _self.certifiSuccess : certifiSuccess // ignore: cast_nullable_to_non_nullable
as bool,businessRegistNum: null == businessRegistNum ? _self.businessRegistNum : businessRegistNum // ignore: cast_nullable_to_non_nullable
as String,corporationRegistNum: null == corporationRegistNum ? _self.corporationRegistNum : corporationRegistNum // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,mainAddress: null == mainAddress ? _self.mainAddress : mainAddress // ignore: cast_nullable_to_non_nullable
as String,detailAddress: null == detailAddress ? _self.detailAddress : detailAddress // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,industryTypeList: null == industryTypeList ? _self._industryTypeList : industryTypeList // ignore: cast_nullable_to_non_nullable
as List<IndustryTypeModel>,industryType: null == industryType ? _self.industryType : industryType // ignore: cast_nullable_to_non_nullable
as IndustryTypeModel,mainCategoryList: null == mainCategoryList ? _self._mainCategoryList : mainCategoryList // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,mainCategory: null == mainCategory ? _self.mainCategory : mainCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel,subCategoryList: null == subCategoryList ? _self._subCategoryList : subCategoryList // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,subCategory: null == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,agreeList: null == agreeList ? _self._agreeList : agreeList // ignore: cast_nullable_to_non_nullable
as List<bool>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,detailAddressFocusNode: null == detailAddressFocusNode ? _self.detailAddressFocusNode : detailAddressFocusNode // ignore: cast_nullable_to_non_nullable
as FocusNode,
  ));
}


}

// dart format on
