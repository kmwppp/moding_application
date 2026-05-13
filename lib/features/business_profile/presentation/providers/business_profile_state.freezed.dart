// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BusinessProfileState {

 bool get isLoading; BusinessProfileResponseWrapper? get businessProfile; ChangeRequestBusinessProfileResponseWrapper? get changeRequestBusinessProfile; bool get requestFormLoading; bool get requestFormSubmitting; String get requestBusinessPhone; List<CategoryRequestModel> get mainCategories; List<CategoryRequestModel> get subCategories; CategoryRequestModel? get selectedMainCategory; CategoryRequestModel? get selectedSubCategory; String? get businessLicensePath;
/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessProfileStateCopyWith<BusinessProfileState> get copyWith => _$BusinessProfileStateCopyWithImpl<BusinessProfileState>(this as BusinessProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.businessProfile, businessProfile) || other.businessProfile == businessProfile)&&(identical(other.changeRequestBusinessProfile, changeRequestBusinessProfile) || other.changeRequestBusinessProfile == changeRequestBusinessProfile)&&(identical(other.requestFormLoading, requestFormLoading) || other.requestFormLoading == requestFormLoading)&&(identical(other.requestFormSubmitting, requestFormSubmitting) || other.requestFormSubmitting == requestFormSubmitting)&&(identical(other.requestBusinessPhone, requestBusinessPhone) || other.requestBusinessPhone == requestBusinessPhone)&&const DeepCollectionEquality().equals(other.mainCategories, mainCategories)&&const DeepCollectionEquality().equals(other.subCategories, subCategories)&&(identical(other.selectedMainCategory, selectedMainCategory) || other.selectedMainCategory == selectedMainCategory)&&(identical(other.selectedSubCategory, selectedSubCategory) || other.selectedSubCategory == selectedSubCategory)&&(identical(other.businessLicensePath, businessLicensePath) || other.businessLicensePath == businessLicensePath));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,businessProfile,changeRequestBusinessProfile,requestFormLoading,requestFormSubmitting,requestBusinessPhone,const DeepCollectionEquality().hash(mainCategories),const DeepCollectionEquality().hash(subCategories),selectedMainCategory,selectedSubCategory,businessLicensePath);

@override
String toString() {
  return 'BusinessProfileState(isLoading: $isLoading, businessProfile: $businessProfile, changeRequestBusinessProfile: $changeRequestBusinessProfile, requestFormLoading: $requestFormLoading, requestFormSubmitting: $requestFormSubmitting, requestBusinessPhone: $requestBusinessPhone, mainCategories: $mainCategories, subCategories: $subCategories, selectedMainCategory: $selectedMainCategory, selectedSubCategory: $selectedSubCategory, businessLicensePath: $businessLicensePath)';
}


}

/// @nodoc
abstract mixin class $BusinessProfileStateCopyWith<$Res>  {
  factory $BusinessProfileStateCopyWith(BusinessProfileState value, $Res Function(BusinessProfileState) _then) = _$BusinessProfileStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, BusinessProfileResponseWrapper? businessProfile, ChangeRequestBusinessProfileResponseWrapper? changeRequestBusinessProfile, bool requestFormLoading, bool requestFormSubmitting, String requestBusinessPhone, List<CategoryRequestModel> mainCategories, List<CategoryRequestModel> subCategories, CategoryRequestModel? selectedMainCategory, CategoryRequestModel? selectedSubCategory, String? businessLicensePath
});


$BusinessProfileResponseWrapperCopyWith<$Res>? get businessProfile;$ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res>? get changeRequestBusinessProfile;

}
/// @nodoc
class _$BusinessProfileStateCopyWithImpl<$Res>
    implements $BusinessProfileStateCopyWith<$Res> {
  _$BusinessProfileStateCopyWithImpl(this._self, this._then);

  final BusinessProfileState _self;
  final $Res Function(BusinessProfileState) _then;

/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? businessProfile = freezed,Object? changeRequestBusinessProfile = freezed,Object? requestFormLoading = null,Object? requestFormSubmitting = null,Object? requestBusinessPhone = null,Object? mainCategories = null,Object? subCategories = null,Object? selectedMainCategory = freezed,Object? selectedSubCategory = freezed,Object? businessLicensePath = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,businessProfile: freezed == businessProfile ? _self.businessProfile : businessProfile // ignore: cast_nullable_to_non_nullable
as BusinessProfileResponseWrapper?,changeRequestBusinessProfile: freezed == changeRequestBusinessProfile ? _self.changeRequestBusinessProfile : changeRequestBusinessProfile // ignore: cast_nullable_to_non_nullable
as ChangeRequestBusinessProfileResponseWrapper?,requestFormLoading: null == requestFormLoading ? _self.requestFormLoading : requestFormLoading // ignore: cast_nullable_to_non_nullable
as bool,requestFormSubmitting: null == requestFormSubmitting ? _self.requestFormSubmitting : requestFormSubmitting // ignore: cast_nullable_to_non_nullable
as bool,requestBusinessPhone: null == requestBusinessPhone ? _self.requestBusinessPhone : requestBusinessPhone // ignore: cast_nullable_to_non_nullable
as String,mainCategories: null == mainCategories ? _self.mainCategories : mainCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,selectedMainCategory: freezed == selectedMainCategory ? _self.selectedMainCategory : selectedMainCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel?,selectedSubCategory: freezed == selectedSubCategory ? _self.selectedSubCategory : selectedSubCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel?,businessLicensePath: freezed == businessLicensePath ? _self.businessLicensePath : businessLicensePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessProfileResponseWrapperCopyWith<$Res>? get businessProfile {
    if (_self.businessProfile == null) {
    return null;
  }

  return $BusinessProfileResponseWrapperCopyWith<$Res>(_self.businessProfile!, (value) {
    return _then(_self.copyWith(businessProfile: value));
  });
}/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res>? get changeRequestBusinessProfile {
    if (_self.changeRequestBusinessProfile == null) {
    return null;
  }

  return $ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res>(_self.changeRequestBusinessProfile!, (value) {
    return _then(_self.copyWith(changeRequestBusinessProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [BusinessProfileState].
extension BusinessProfileStatePatterns on BusinessProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessProfileState value)  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  BusinessProfileResponseWrapper? businessProfile,  ChangeRequestBusinessProfileResponseWrapper? changeRequestBusinessProfile,  bool requestFormLoading,  bool requestFormSubmitting,  String requestBusinessPhone,  List<CategoryRequestModel> mainCategories,  List<CategoryRequestModel> subCategories,  CategoryRequestModel? selectedMainCategory,  CategoryRequestModel? selectedSubCategory,  String? businessLicensePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessProfileState() when $default != null:
return $default(_that.isLoading,_that.businessProfile,_that.changeRequestBusinessProfile,_that.requestFormLoading,_that.requestFormSubmitting,_that.requestBusinessPhone,_that.mainCategories,_that.subCategories,_that.selectedMainCategory,_that.selectedSubCategory,_that.businessLicensePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  BusinessProfileResponseWrapper? businessProfile,  ChangeRequestBusinessProfileResponseWrapper? changeRequestBusinessProfile,  bool requestFormLoading,  bool requestFormSubmitting,  String requestBusinessPhone,  List<CategoryRequestModel> mainCategories,  List<CategoryRequestModel> subCategories,  CategoryRequestModel? selectedMainCategory,  CategoryRequestModel? selectedSubCategory,  String? businessLicensePath)  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileState():
return $default(_that.isLoading,_that.businessProfile,_that.changeRequestBusinessProfile,_that.requestFormLoading,_that.requestFormSubmitting,_that.requestBusinessPhone,_that.mainCategories,_that.subCategories,_that.selectedMainCategory,_that.selectedSubCategory,_that.businessLicensePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  BusinessProfileResponseWrapper? businessProfile,  ChangeRequestBusinessProfileResponseWrapper? changeRequestBusinessProfile,  bool requestFormLoading,  bool requestFormSubmitting,  String requestBusinessPhone,  List<CategoryRequestModel> mainCategories,  List<CategoryRequestModel> subCategories,  CategoryRequestModel? selectedMainCategory,  CategoryRequestModel? selectedSubCategory,  String? businessLicensePath)?  $default,) {final _that = this;
switch (_that) {
case _BusinessProfileState() when $default != null:
return $default(_that.isLoading,_that.businessProfile,_that.changeRequestBusinessProfile,_that.requestFormLoading,_that.requestFormSubmitting,_that.requestBusinessPhone,_that.mainCategories,_that.subCategories,_that.selectedMainCategory,_that.selectedSubCategory,_that.businessLicensePath);case _:
  return null;

}
}

}

/// @nodoc


class _BusinessProfileState extends BusinessProfileState {
  const _BusinessProfileState({required this.isLoading, this.businessProfile, this.changeRequestBusinessProfile, this.requestFormLoading = true, this.requestFormSubmitting = false, this.requestBusinessPhone = '', final  List<CategoryRequestModel> mainCategories = const <CategoryRequestModel>[], final  List<CategoryRequestModel> subCategories = const <CategoryRequestModel>[], this.selectedMainCategory, this.selectedSubCategory, this.businessLicensePath}): _mainCategories = mainCategories,_subCategories = subCategories,super._();
  

@override final  bool isLoading;
@override final  BusinessProfileResponseWrapper? businessProfile;
@override final  ChangeRequestBusinessProfileResponseWrapper? changeRequestBusinessProfile;
@override@JsonKey() final  bool requestFormLoading;
@override@JsonKey() final  bool requestFormSubmitting;
@override@JsonKey() final  String requestBusinessPhone;
 final  List<CategoryRequestModel> _mainCategories;
@override@JsonKey() List<CategoryRequestModel> get mainCategories {
  if (_mainCategories is EqualUnmodifiableListView) return _mainCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainCategories);
}

 final  List<CategoryRequestModel> _subCategories;
@override@JsonKey() List<CategoryRequestModel> get subCategories {
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subCategories);
}

@override final  CategoryRequestModel? selectedMainCategory;
@override final  CategoryRequestModel? selectedSubCategory;
@override final  String? businessLicensePath;

/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessProfileStateCopyWith<_BusinessProfileState> get copyWith => __$BusinessProfileStateCopyWithImpl<_BusinessProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.businessProfile, businessProfile) || other.businessProfile == businessProfile)&&(identical(other.changeRequestBusinessProfile, changeRequestBusinessProfile) || other.changeRequestBusinessProfile == changeRequestBusinessProfile)&&(identical(other.requestFormLoading, requestFormLoading) || other.requestFormLoading == requestFormLoading)&&(identical(other.requestFormSubmitting, requestFormSubmitting) || other.requestFormSubmitting == requestFormSubmitting)&&(identical(other.requestBusinessPhone, requestBusinessPhone) || other.requestBusinessPhone == requestBusinessPhone)&&const DeepCollectionEquality().equals(other._mainCategories, _mainCategories)&&const DeepCollectionEquality().equals(other._subCategories, _subCategories)&&(identical(other.selectedMainCategory, selectedMainCategory) || other.selectedMainCategory == selectedMainCategory)&&(identical(other.selectedSubCategory, selectedSubCategory) || other.selectedSubCategory == selectedSubCategory)&&(identical(other.businessLicensePath, businessLicensePath) || other.businessLicensePath == businessLicensePath));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,businessProfile,changeRequestBusinessProfile,requestFormLoading,requestFormSubmitting,requestBusinessPhone,const DeepCollectionEquality().hash(_mainCategories),const DeepCollectionEquality().hash(_subCategories),selectedMainCategory,selectedSubCategory,businessLicensePath);

@override
String toString() {
  return 'BusinessProfileState(isLoading: $isLoading, businessProfile: $businessProfile, changeRequestBusinessProfile: $changeRequestBusinessProfile, requestFormLoading: $requestFormLoading, requestFormSubmitting: $requestFormSubmitting, requestBusinessPhone: $requestBusinessPhone, mainCategories: $mainCategories, subCategories: $subCategories, selectedMainCategory: $selectedMainCategory, selectedSubCategory: $selectedSubCategory, businessLicensePath: $businessLicensePath)';
}


}

/// @nodoc
abstract mixin class _$BusinessProfileStateCopyWith<$Res> implements $BusinessProfileStateCopyWith<$Res> {
  factory _$BusinessProfileStateCopyWith(_BusinessProfileState value, $Res Function(_BusinessProfileState) _then) = __$BusinessProfileStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, BusinessProfileResponseWrapper? businessProfile, ChangeRequestBusinessProfileResponseWrapper? changeRequestBusinessProfile, bool requestFormLoading, bool requestFormSubmitting, String requestBusinessPhone, List<CategoryRequestModel> mainCategories, List<CategoryRequestModel> subCategories, CategoryRequestModel? selectedMainCategory, CategoryRequestModel? selectedSubCategory, String? businessLicensePath
});


@override $BusinessProfileResponseWrapperCopyWith<$Res>? get businessProfile;@override $ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res>? get changeRequestBusinessProfile;

}
/// @nodoc
class __$BusinessProfileStateCopyWithImpl<$Res>
    implements _$BusinessProfileStateCopyWith<$Res> {
  __$BusinessProfileStateCopyWithImpl(this._self, this._then);

  final _BusinessProfileState _self;
  final $Res Function(_BusinessProfileState) _then;

/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? businessProfile = freezed,Object? changeRequestBusinessProfile = freezed,Object? requestFormLoading = null,Object? requestFormSubmitting = null,Object? requestBusinessPhone = null,Object? mainCategories = null,Object? subCategories = null,Object? selectedMainCategory = freezed,Object? selectedSubCategory = freezed,Object? businessLicensePath = freezed,}) {
  return _then(_BusinessProfileState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,businessProfile: freezed == businessProfile ? _self.businessProfile : businessProfile // ignore: cast_nullable_to_non_nullable
as BusinessProfileResponseWrapper?,changeRequestBusinessProfile: freezed == changeRequestBusinessProfile ? _self.changeRequestBusinessProfile : changeRequestBusinessProfile // ignore: cast_nullable_to_non_nullable
as ChangeRequestBusinessProfileResponseWrapper?,requestFormLoading: null == requestFormLoading ? _self.requestFormLoading : requestFormLoading // ignore: cast_nullable_to_non_nullable
as bool,requestFormSubmitting: null == requestFormSubmitting ? _self.requestFormSubmitting : requestFormSubmitting // ignore: cast_nullable_to_non_nullable
as bool,requestBusinessPhone: null == requestBusinessPhone ? _self.requestBusinessPhone : requestBusinessPhone // ignore: cast_nullable_to_non_nullable
as String,mainCategories: null == mainCategories ? _self._mainCategories : mainCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,subCategories: null == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryRequestModel>,selectedMainCategory: freezed == selectedMainCategory ? _self.selectedMainCategory : selectedMainCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel?,selectedSubCategory: freezed == selectedSubCategory ? _self.selectedSubCategory : selectedSubCategory // ignore: cast_nullable_to_non_nullable
as CategoryRequestModel?,businessLicensePath: freezed == businessLicensePath ? _self.businessLicensePath : businessLicensePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessProfileResponseWrapperCopyWith<$Res>? get businessProfile {
    if (_self.businessProfile == null) {
    return null;
  }

  return $BusinessProfileResponseWrapperCopyWith<$Res>(_self.businessProfile!, (value) {
    return _then(_self.copyWith(businessProfile: value));
  });
}/// Create a copy of BusinessProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res>? get changeRequestBusinessProfile {
    if (_self.changeRequestBusinessProfile == null) {
    return null;
  }

  return $ChangeRequestBusinessProfileResponseWrapperCopyWith<$Res>(_self.changeRequestBusinessProfile!, (value) {
    return _then(_self.copyWith(changeRequestBusinessProfile: value));
  });
}
}

// dart format on
