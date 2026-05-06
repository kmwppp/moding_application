// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_conversion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellerConversionState {

 bool get isLoading; bool get isSubmitting; String get taxInvoiceEmail; SellerTaxType? get taxType; List<CategoryPermitsDto> get mainPermits; List<CategoryPermitsDto> get subPermits; CategoryPermitsDto? get selectedMainPermit; CategoryPermitsDto? get selectedSubPermit; String? get bankName; String get bankAccountNumber; String get bankAccountHolder; String? get bankbookImagePath; String? get businessPermitImagePath; String? get salesPermitImagePath; List<String> get otherFilePaths;
/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerConversionStateCopyWith<SellerConversionState> get copyWith => _$SellerConversionStateCopyWithImpl<SellerConversionState>(this as SellerConversionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerConversionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.taxInvoiceEmail, taxInvoiceEmail) || other.taxInvoiceEmail == taxInvoiceEmail)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&const DeepCollectionEquality().equals(other.mainPermits, mainPermits)&&const DeepCollectionEquality().equals(other.subPermits, subPermits)&&(identical(other.selectedMainPermit, selectedMainPermit) || other.selectedMainPermit == selectedMainPermit)&&(identical(other.selectedSubPermit, selectedSubPermit) || other.selectedSubPermit == selectedSubPermit)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.bankbookImagePath, bankbookImagePath) || other.bankbookImagePath == bankbookImagePath)&&(identical(other.businessPermitImagePath, businessPermitImagePath) || other.businessPermitImagePath == businessPermitImagePath)&&(identical(other.salesPermitImagePath, salesPermitImagePath) || other.salesPermitImagePath == salesPermitImagePath)&&const DeepCollectionEquality().equals(other.otherFilePaths, otherFilePaths));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,taxInvoiceEmail,taxType,const DeepCollectionEquality().hash(mainPermits),const DeepCollectionEquality().hash(subPermits),selectedMainPermit,selectedSubPermit,bankName,bankAccountNumber,bankAccountHolder,bankbookImagePath,businessPermitImagePath,salesPermitImagePath,const DeepCollectionEquality().hash(otherFilePaths));

@override
String toString() {
  return 'SellerConversionState(isLoading: $isLoading, isSubmitting: $isSubmitting, taxInvoiceEmail: $taxInvoiceEmail, taxType: $taxType, mainPermits: $mainPermits, subPermits: $subPermits, selectedMainPermit: $selectedMainPermit, selectedSubPermit: $selectedSubPermit, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, bankbookImagePath: $bankbookImagePath, businessPermitImagePath: $businessPermitImagePath, salesPermitImagePath: $salesPermitImagePath, otherFilePaths: $otherFilePaths)';
}


}

/// @nodoc
abstract mixin class $SellerConversionStateCopyWith<$Res>  {
  factory $SellerConversionStateCopyWith(SellerConversionState value, $Res Function(SellerConversionState) _then) = _$SellerConversionStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSubmitting, String taxInvoiceEmail, SellerTaxType? taxType, List<CategoryPermitsDto> mainPermits, List<CategoryPermitsDto> subPermits, CategoryPermitsDto? selectedMainPermit, CategoryPermitsDto? selectedSubPermit, String? bankName, String bankAccountNumber, String bankAccountHolder, String? bankbookImagePath, String? businessPermitImagePath, String? salesPermitImagePath, List<String> otherFilePaths
});


$CategoryPermitsDtoCopyWith<$Res>? get selectedMainPermit;$CategoryPermitsDtoCopyWith<$Res>? get selectedSubPermit;

}
/// @nodoc
class _$SellerConversionStateCopyWithImpl<$Res>
    implements $SellerConversionStateCopyWith<$Res> {
  _$SellerConversionStateCopyWithImpl(this._self, this._then);

  final SellerConversionState _self;
  final $Res Function(SellerConversionState) _then;

/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? taxInvoiceEmail = null,Object? taxType = freezed,Object? mainPermits = null,Object? subPermits = null,Object? selectedMainPermit = freezed,Object? selectedSubPermit = freezed,Object? bankName = freezed,Object? bankAccountNumber = null,Object? bankAccountHolder = null,Object? bankbookImagePath = freezed,Object? businessPermitImagePath = freezed,Object? salesPermitImagePath = freezed,Object? otherFilePaths = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,taxInvoiceEmail: null == taxInvoiceEmail ? _self.taxInvoiceEmail : taxInvoiceEmail // ignore: cast_nullable_to_non_nullable
as String,taxType: freezed == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as SellerTaxType?,mainPermits: null == mainPermits ? _self.mainPermits : mainPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,subPermits: null == subPermits ? _self.subPermits : subPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,selectedMainPermit: freezed == selectedMainPermit ? _self.selectedMainPermit : selectedMainPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,selectedSubPermit: freezed == selectedSubPermit ? _self.selectedSubPermit : selectedSubPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: null == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String,bankAccountHolder: null == bankAccountHolder ? _self.bankAccountHolder : bankAccountHolder // ignore: cast_nullable_to_non_nullable
as String,bankbookImagePath: freezed == bankbookImagePath ? _self.bankbookImagePath : bankbookImagePath // ignore: cast_nullable_to_non_nullable
as String?,businessPermitImagePath: freezed == businessPermitImagePath ? _self.businessPermitImagePath : businessPermitImagePath // ignore: cast_nullable_to_non_nullable
as String?,salesPermitImagePath: freezed == salesPermitImagePath ? _self.salesPermitImagePath : salesPermitImagePath // ignore: cast_nullable_to_non_nullable
as String?,otherFilePaths: null == otherFilePaths ? _self.otherFilePaths : otherFilePaths // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryPermitsDtoCopyWith<$Res>? get selectedMainPermit {
    if (_self.selectedMainPermit == null) {
    return null;
  }

  return $CategoryPermitsDtoCopyWith<$Res>(_self.selectedMainPermit!, (value) {
    return _then(_self.copyWith(selectedMainPermit: value));
  });
}/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryPermitsDtoCopyWith<$Res>? get selectedSubPermit {
    if (_self.selectedSubPermit == null) {
    return null;
  }

  return $CategoryPermitsDtoCopyWith<$Res>(_self.selectedSubPermit!, (value) {
    return _then(_self.copyWith(selectedSubPermit: value));
  });
}
}


/// Adds pattern-matching-related methods to [SellerConversionState].
extension SellerConversionStatePatterns on SellerConversionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerConversionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerConversionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerConversionState value)  $default,){
final _that = this;
switch (_that) {
case _SellerConversionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerConversionState value)?  $default,){
final _that = this;
switch (_that) {
case _SellerConversionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  String taxInvoiceEmail,  SellerTaxType? taxType,  List<CategoryPermitsDto> mainPermits,  List<CategoryPermitsDto> subPermits,  CategoryPermitsDto? selectedMainPermit,  CategoryPermitsDto? selectedSubPermit,  String? bankName,  String bankAccountNumber,  String bankAccountHolder,  String? bankbookImagePath,  String? businessPermitImagePath,  String? salesPermitImagePath,  List<String> otherFilePaths)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerConversionState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.taxInvoiceEmail,_that.taxType,_that.mainPermits,_that.subPermits,_that.selectedMainPermit,_that.selectedSubPermit,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder,_that.bankbookImagePath,_that.businessPermitImagePath,_that.salesPermitImagePath,_that.otherFilePaths);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  String taxInvoiceEmail,  SellerTaxType? taxType,  List<CategoryPermitsDto> mainPermits,  List<CategoryPermitsDto> subPermits,  CategoryPermitsDto? selectedMainPermit,  CategoryPermitsDto? selectedSubPermit,  String? bankName,  String bankAccountNumber,  String bankAccountHolder,  String? bankbookImagePath,  String? businessPermitImagePath,  String? salesPermitImagePath,  List<String> otherFilePaths)  $default,) {final _that = this;
switch (_that) {
case _SellerConversionState():
return $default(_that.isLoading,_that.isSubmitting,_that.taxInvoiceEmail,_that.taxType,_that.mainPermits,_that.subPermits,_that.selectedMainPermit,_that.selectedSubPermit,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder,_that.bankbookImagePath,_that.businessPermitImagePath,_that.salesPermitImagePath,_that.otherFilePaths);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSubmitting,  String taxInvoiceEmail,  SellerTaxType? taxType,  List<CategoryPermitsDto> mainPermits,  List<CategoryPermitsDto> subPermits,  CategoryPermitsDto? selectedMainPermit,  CategoryPermitsDto? selectedSubPermit,  String? bankName,  String bankAccountNumber,  String bankAccountHolder,  String? bankbookImagePath,  String? businessPermitImagePath,  String? salesPermitImagePath,  List<String> otherFilePaths)?  $default,) {final _that = this;
switch (_that) {
case _SellerConversionState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.taxInvoiceEmail,_that.taxType,_that.mainPermits,_that.subPermits,_that.selectedMainPermit,_that.selectedSubPermit,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder,_that.bankbookImagePath,_that.businessPermitImagePath,_that.salesPermitImagePath,_that.otherFilePaths);case _:
  return null;

}
}

}

/// @nodoc


class _SellerConversionState implements SellerConversionState {
  const _SellerConversionState({this.isLoading = false, this.isSubmitting = false, this.taxInvoiceEmail = '', this.taxType, final  List<CategoryPermitsDto> mainPermits = const [], final  List<CategoryPermitsDto> subPermits = const [], this.selectedMainPermit, this.selectedSubPermit, this.bankName, this.bankAccountNumber = '', this.bankAccountHolder = '', this.bankbookImagePath, this.businessPermitImagePath, this.salesPermitImagePath, final  List<String> otherFilePaths = const []}): _mainPermits = mainPermits,_subPermits = subPermits,_otherFilePaths = otherFilePaths;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  String taxInvoiceEmail;
@override final  SellerTaxType? taxType;
 final  List<CategoryPermitsDto> _mainPermits;
@override@JsonKey() List<CategoryPermitsDto> get mainPermits {
  if (_mainPermits is EqualUnmodifiableListView) return _mainPermits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainPermits);
}

 final  List<CategoryPermitsDto> _subPermits;
@override@JsonKey() List<CategoryPermitsDto> get subPermits {
  if (_subPermits is EqualUnmodifiableListView) return _subPermits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subPermits);
}

@override final  CategoryPermitsDto? selectedMainPermit;
@override final  CategoryPermitsDto? selectedSubPermit;
@override final  String? bankName;
@override@JsonKey() final  String bankAccountNumber;
@override@JsonKey() final  String bankAccountHolder;
@override final  String? bankbookImagePath;
@override final  String? businessPermitImagePath;
@override final  String? salesPermitImagePath;
 final  List<String> _otherFilePaths;
@override@JsonKey() List<String> get otherFilePaths {
  if (_otherFilePaths is EqualUnmodifiableListView) return _otherFilePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_otherFilePaths);
}


/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerConversionStateCopyWith<_SellerConversionState> get copyWith => __$SellerConversionStateCopyWithImpl<_SellerConversionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerConversionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.taxInvoiceEmail, taxInvoiceEmail) || other.taxInvoiceEmail == taxInvoiceEmail)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&const DeepCollectionEquality().equals(other._mainPermits, _mainPermits)&&const DeepCollectionEquality().equals(other._subPermits, _subPermits)&&(identical(other.selectedMainPermit, selectedMainPermit) || other.selectedMainPermit == selectedMainPermit)&&(identical(other.selectedSubPermit, selectedSubPermit) || other.selectedSubPermit == selectedSubPermit)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.bankbookImagePath, bankbookImagePath) || other.bankbookImagePath == bankbookImagePath)&&(identical(other.businessPermitImagePath, businessPermitImagePath) || other.businessPermitImagePath == businessPermitImagePath)&&(identical(other.salesPermitImagePath, salesPermitImagePath) || other.salesPermitImagePath == salesPermitImagePath)&&const DeepCollectionEquality().equals(other._otherFilePaths, _otherFilePaths));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,taxInvoiceEmail,taxType,const DeepCollectionEquality().hash(_mainPermits),const DeepCollectionEquality().hash(_subPermits),selectedMainPermit,selectedSubPermit,bankName,bankAccountNumber,bankAccountHolder,bankbookImagePath,businessPermitImagePath,salesPermitImagePath,const DeepCollectionEquality().hash(_otherFilePaths));

@override
String toString() {
  return 'SellerConversionState(isLoading: $isLoading, isSubmitting: $isSubmitting, taxInvoiceEmail: $taxInvoiceEmail, taxType: $taxType, mainPermits: $mainPermits, subPermits: $subPermits, selectedMainPermit: $selectedMainPermit, selectedSubPermit: $selectedSubPermit, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, bankbookImagePath: $bankbookImagePath, businessPermitImagePath: $businessPermitImagePath, salesPermitImagePath: $salesPermitImagePath, otherFilePaths: $otherFilePaths)';
}


}

/// @nodoc
abstract mixin class _$SellerConversionStateCopyWith<$Res> implements $SellerConversionStateCopyWith<$Res> {
  factory _$SellerConversionStateCopyWith(_SellerConversionState value, $Res Function(_SellerConversionState) _then) = __$SellerConversionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSubmitting, String taxInvoiceEmail, SellerTaxType? taxType, List<CategoryPermitsDto> mainPermits, List<CategoryPermitsDto> subPermits, CategoryPermitsDto? selectedMainPermit, CategoryPermitsDto? selectedSubPermit, String? bankName, String bankAccountNumber, String bankAccountHolder, String? bankbookImagePath, String? businessPermitImagePath, String? salesPermitImagePath, List<String> otherFilePaths
});


@override $CategoryPermitsDtoCopyWith<$Res>? get selectedMainPermit;@override $CategoryPermitsDtoCopyWith<$Res>? get selectedSubPermit;

}
/// @nodoc
class __$SellerConversionStateCopyWithImpl<$Res>
    implements _$SellerConversionStateCopyWith<$Res> {
  __$SellerConversionStateCopyWithImpl(this._self, this._then);

  final _SellerConversionState _self;
  final $Res Function(_SellerConversionState) _then;

/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? taxInvoiceEmail = null,Object? taxType = freezed,Object? mainPermits = null,Object? subPermits = null,Object? selectedMainPermit = freezed,Object? selectedSubPermit = freezed,Object? bankName = freezed,Object? bankAccountNumber = null,Object? bankAccountHolder = null,Object? bankbookImagePath = freezed,Object? businessPermitImagePath = freezed,Object? salesPermitImagePath = freezed,Object? otherFilePaths = null,}) {
  return _then(_SellerConversionState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,taxInvoiceEmail: null == taxInvoiceEmail ? _self.taxInvoiceEmail : taxInvoiceEmail // ignore: cast_nullable_to_non_nullable
as String,taxType: freezed == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as SellerTaxType?,mainPermits: null == mainPermits ? _self._mainPermits : mainPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,subPermits: null == subPermits ? _self._subPermits : subPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,selectedMainPermit: freezed == selectedMainPermit ? _self.selectedMainPermit : selectedMainPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,selectedSubPermit: freezed == selectedSubPermit ? _self.selectedSubPermit : selectedSubPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: null == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String,bankAccountHolder: null == bankAccountHolder ? _self.bankAccountHolder : bankAccountHolder // ignore: cast_nullable_to_non_nullable
as String,bankbookImagePath: freezed == bankbookImagePath ? _self.bankbookImagePath : bankbookImagePath // ignore: cast_nullable_to_non_nullable
as String?,businessPermitImagePath: freezed == businessPermitImagePath ? _self.businessPermitImagePath : businessPermitImagePath // ignore: cast_nullable_to_non_nullable
as String?,salesPermitImagePath: freezed == salesPermitImagePath ? _self.salesPermitImagePath : salesPermitImagePath // ignore: cast_nullable_to_non_nullable
as String?,otherFilePaths: null == otherFilePaths ? _self._otherFilePaths : otherFilePaths // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryPermitsDtoCopyWith<$Res>? get selectedMainPermit {
    if (_self.selectedMainPermit == null) {
    return null;
  }

  return $CategoryPermitsDtoCopyWith<$Res>(_self.selectedMainPermit!, (value) {
    return _then(_self.copyWith(selectedMainPermit: value));
  });
}/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryPermitsDtoCopyWith<$Res>? get selectedSubPermit {
    if (_self.selectedSubPermit == null) {
    return null;
  }

  return $CategoryPermitsDtoCopyWith<$Res>(_self.selectedSubPermit!, (value) {
    return _then(_self.copyWith(selectedSubPermit: value));
  });
}
}

// dart format on
