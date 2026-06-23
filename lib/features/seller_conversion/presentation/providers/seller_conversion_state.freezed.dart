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

 bool get isLoading; bool get isSubmitting; String get taxInvoiceEmail; SellerTaxType? get taxType; List<CategoryPermitsDto> get mainPermits; List<CategoryPermitsDto> get subPermits; CategoryPermitsDto? get selectedMainPermit; CategoryPermitsDto? get selectedSubPermit; MetaOptionDto? get selectedBank; String get bankAccountNumber; String get bankAccountHolder; String? get bankbookImagePath; List<String> get businessPermitImagePaths; List<String> get salesPermitImagePaths; List<String> get haccpCertificateImagePaths; List<String> get otherFilePaths; bool get agreedSellerTerms; bool get agreedSettlementTerms;
/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerConversionStateCopyWith<SellerConversionState> get copyWith => _$SellerConversionStateCopyWithImpl<SellerConversionState>(this as SellerConversionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerConversionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.taxInvoiceEmail, taxInvoiceEmail) || other.taxInvoiceEmail == taxInvoiceEmail)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&const DeepCollectionEquality().equals(other.mainPermits, mainPermits)&&const DeepCollectionEquality().equals(other.subPermits, subPermits)&&(identical(other.selectedMainPermit, selectedMainPermit) || other.selectedMainPermit == selectedMainPermit)&&(identical(other.selectedSubPermit, selectedSubPermit) || other.selectedSubPermit == selectedSubPermit)&&(identical(other.selectedBank, selectedBank) || other.selectedBank == selectedBank)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.bankbookImagePath, bankbookImagePath) || other.bankbookImagePath == bankbookImagePath)&&const DeepCollectionEquality().equals(other.businessPermitImagePaths, businessPermitImagePaths)&&const DeepCollectionEquality().equals(other.salesPermitImagePaths, salesPermitImagePaths)&&const DeepCollectionEquality().equals(other.haccpCertificateImagePaths, haccpCertificateImagePaths)&&const DeepCollectionEquality().equals(other.otherFilePaths, otherFilePaths)&&(identical(other.agreedSellerTerms, agreedSellerTerms) || other.agreedSellerTerms == agreedSellerTerms)&&(identical(other.agreedSettlementTerms, agreedSettlementTerms) || other.agreedSettlementTerms == agreedSettlementTerms));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,taxInvoiceEmail,taxType,const DeepCollectionEquality().hash(mainPermits),const DeepCollectionEquality().hash(subPermits),selectedMainPermit,selectedSubPermit,selectedBank,bankAccountNumber,bankAccountHolder,bankbookImagePath,const DeepCollectionEquality().hash(businessPermitImagePaths),const DeepCollectionEquality().hash(salesPermitImagePaths),const DeepCollectionEquality().hash(haccpCertificateImagePaths),const DeepCollectionEquality().hash(otherFilePaths),agreedSellerTerms,agreedSettlementTerms);

@override
String toString() {
  return 'SellerConversionState(isLoading: $isLoading, isSubmitting: $isSubmitting, taxInvoiceEmail: $taxInvoiceEmail, taxType: $taxType, mainPermits: $mainPermits, subPermits: $subPermits, selectedMainPermit: $selectedMainPermit, selectedSubPermit: $selectedSubPermit, selectedBank: $selectedBank, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, bankbookImagePath: $bankbookImagePath, businessPermitImagePaths: $businessPermitImagePaths, salesPermitImagePaths: $salesPermitImagePaths, haccpCertificateImagePaths: $haccpCertificateImagePaths, otherFilePaths: $otherFilePaths, agreedSellerTerms: $agreedSellerTerms, agreedSettlementTerms: $agreedSettlementTerms)';
}


}

/// @nodoc
abstract mixin class $SellerConversionStateCopyWith<$Res>  {
  factory $SellerConversionStateCopyWith(SellerConversionState value, $Res Function(SellerConversionState) _then) = _$SellerConversionStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSubmitting, String taxInvoiceEmail, SellerTaxType? taxType, List<CategoryPermitsDto> mainPermits, List<CategoryPermitsDto> subPermits, CategoryPermitsDto? selectedMainPermit, CategoryPermitsDto? selectedSubPermit, MetaOptionDto? selectedBank, String bankAccountNumber, String bankAccountHolder, String? bankbookImagePath, List<String> businessPermitImagePaths, List<String> salesPermitImagePaths, List<String> haccpCertificateImagePaths, List<String> otherFilePaths, bool agreedSellerTerms, bool agreedSettlementTerms
});


$CategoryPermitsDtoCopyWith<$Res>? get selectedMainPermit;$CategoryPermitsDtoCopyWith<$Res>? get selectedSubPermit;$MetaOptionDtoCopyWith<$Res>? get selectedBank;

}
/// @nodoc
class _$SellerConversionStateCopyWithImpl<$Res>
    implements $SellerConversionStateCopyWith<$Res> {
  _$SellerConversionStateCopyWithImpl(this._self, this._then);

  final SellerConversionState _self;
  final $Res Function(SellerConversionState) _then;

/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? taxInvoiceEmail = null,Object? taxType = freezed,Object? mainPermits = null,Object? subPermits = null,Object? selectedMainPermit = freezed,Object? selectedSubPermit = freezed,Object? selectedBank = freezed,Object? bankAccountNumber = null,Object? bankAccountHolder = null,Object? bankbookImagePath = freezed,Object? businessPermitImagePaths = null,Object? salesPermitImagePaths = null,Object? haccpCertificateImagePaths = null,Object? otherFilePaths = null,Object? agreedSellerTerms = null,Object? agreedSettlementTerms = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,taxInvoiceEmail: null == taxInvoiceEmail ? _self.taxInvoiceEmail : taxInvoiceEmail // ignore: cast_nullable_to_non_nullable
as String,taxType: freezed == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as SellerTaxType?,mainPermits: null == mainPermits ? _self.mainPermits : mainPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,subPermits: null == subPermits ? _self.subPermits : subPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,selectedMainPermit: freezed == selectedMainPermit ? _self.selectedMainPermit : selectedMainPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,selectedSubPermit: freezed == selectedSubPermit ? _self.selectedSubPermit : selectedSubPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,selectedBank: freezed == selectedBank ? _self.selectedBank : selectedBank // ignore: cast_nullable_to_non_nullable
as MetaOptionDto?,bankAccountNumber: null == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String,bankAccountHolder: null == bankAccountHolder ? _self.bankAccountHolder : bankAccountHolder // ignore: cast_nullable_to_non_nullable
as String,bankbookImagePath: freezed == bankbookImagePath ? _self.bankbookImagePath : bankbookImagePath // ignore: cast_nullable_to_non_nullable
as String?,businessPermitImagePaths: null == businessPermitImagePaths ? _self.businessPermitImagePaths : businessPermitImagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,salesPermitImagePaths: null == salesPermitImagePaths ? _self.salesPermitImagePaths : salesPermitImagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,haccpCertificateImagePaths: null == haccpCertificateImagePaths ? _self.haccpCertificateImagePaths : haccpCertificateImagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,otherFilePaths: null == otherFilePaths ? _self.otherFilePaths : otherFilePaths // ignore: cast_nullable_to_non_nullable
as List<String>,agreedSellerTerms: null == agreedSellerTerms ? _self.agreedSellerTerms : agreedSellerTerms // ignore: cast_nullable_to_non_nullable
as bool,agreedSettlementTerms: null == agreedSettlementTerms ? _self.agreedSettlementTerms : agreedSettlementTerms // ignore: cast_nullable_to_non_nullable
as bool,
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
}/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaOptionDtoCopyWith<$Res>? get selectedBank {
    if (_self.selectedBank == null) {
    return null;
  }

  return $MetaOptionDtoCopyWith<$Res>(_self.selectedBank!, (value) {
    return _then(_self.copyWith(selectedBank: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  String taxInvoiceEmail,  SellerTaxType? taxType,  List<CategoryPermitsDto> mainPermits,  List<CategoryPermitsDto> subPermits,  CategoryPermitsDto? selectedMainPermit,  CategoryPermitsDto? selectedSubPermit,  MetaOptionDto? selectedBank,  String bankAccountNumber,  String bankAccountHolder,  String? bankbookImagePath,  List<String> businessPermitImagePaths,  List<String> salesPermitImagePaths,  List<String> haccpCertificateImagePaths,  List<String> otherFilePaths,  bool agreedSellerTerms,  bool agreedSettlementTerms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerConversionState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.taxInvoiceEmail,_that.taxType,_that.mainPermits,_that.subPermits,_that.selectedMainPermit,_that.selectedSubPermit,_that.selectedBank,_that.bankAccountNumber,_that.bankAccountHolder,_that.bankbookImagePath,_that.businessPermitImagePaths,_that.salesPermitImagePaths,_that.haccpCertificateImagePaths,_that.otherFilePaths,_that.agreedSellerTerms,_that.agreedSettlementTerms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  String taxInvoiceEmail,  SellerTaxType? taxType,  List<CategoryPermitsDto> mainPermits,  List<CategoryPermitsDto> subPermits,  CategoryPermitsDto? selectedMainPermit,  CategoryPermitsDto? selectedSubPermit,  MetaOptionDto? selectedBank,  String bankAccountNumber,  String bankAccountHolder,  String? bankbookImagePath,  List<String> businessPermitImagePaths,  List<String> salesPermitImagePaths,  List<String> haccpCertificateImagePaths,  List<String> otherFilePaths,  bool agreedSellerTerms,  bool agreedSettlementTerms)  $default,) {final _that = this;
switch (_that) {
case _SellerConversionState():
return $default(_that.isLoading,_that.isSubmitting,_that.taxInvoiceEmail,_that.taxType,_that.mainPermits,_that.subPermits,_that.selectedMainPermit,_that.selectedSubPermit,_that.selectedBank,_that.bankAccountNumber,_that.bankAccountHolder,_that.bankbookImagePath,_that.businessPermitImagePaths,_that.salesPermitImagePaths,_that.haccpCertificateImagePaths,_that.otherFilePaths,_that.agreedSellerTerms,_that.agreedSettlementTerms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSubmitting,  String taxInvoiceEmail,  SellerTaxType? taxType,  List<CategoryPermitsDto> mainPermits,  List<CategoryPermitsDto> subPermits,  CategoryPermitsDto? selectedMainPermit,  CategoryPermitsDto? selectedSubPermit,  MetaOptionDto? selectedBank,  String bankAccountNumber,  String bankAccountHolder,  String? bankbookImagePath,  List<String> businessPermitImagePaths,  List<String> salesPermitImagePaths,  List<String> haccpCertificateImagePaths,  List<String> otherFilePaths,  bool agreedSellerTerms,  bool agreedSettlementTerms)?  $default,) {final _that = this;
switch (_that) {
case _SellerConversionState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.taxInvoiceEmail,_that.taxType,_that.mainPermits,_that.subPermits,_that.selectedMainPermit,_that.selectedSubPermit,_that.selectedBank,_that.bankAccountNumber,_that.bankAccountHolder,_that.bankbookImagePath,_that.businessPermitImagePaths,_that.salesPermitImagePaths,_that.haccpCertificateImagePaths,_that.otherFilePaths,_that.agreedSellerTerms,_that.agreedSettlementTerms);case _:
  return null;

}
}

}

/// @nodoc


class _SellerConversionState implements SellerConversionState {
  const _SellerConversionState({this.isLoading = false, this.isSubmitting = false, this.taxInvoiceEmail = '', this.taxType, final  List<CategoryPermitsDto> mainPermits = const [], final  List<CategoryPermitsDto> subPermits = const [], this.selectedMainPermit, this.selectedSubPermit, this.selectedBank, this.bankAccountNumber = '', this.bankAccountHolder = '', this.bankbookImagePath, final  List<String> businessPermitImagePaths = const [], final  List<String> salesPermitImagePaths = const [], final  List<String> haccpCertificateImagePaths = const [], final  List<String> otherFilePaths = const [], this.agreedSellerTerms = false, this.agreedSettlementTerms = false}): _mainPermits = mainPermits,_subPermits = subPermits,_businessPermitImagePaths = businessPermitImagePaths,_salesPermitImagePaths = salesPermitImagePaths,_haccpCertificateImagePaths = haccpCertificateImagePaths,_otherFilePaths = otherFilePaths;
  

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
@override final  MetaOptionDto? selectedBank;
@override@JsonKey() final  String bankAccountNumber;
@override@JsonKey() final  String bankAccountHolder;
@override final  String? bankbookImagePath;
 final  List<String> _businessPermitImagePaths;
@override@JsonKey() List<String> get businessPermitImagePaths {
  if (_businessPermitImagePaths is EqualUnmodifiableListView) return _businessPermitImagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_businessPermitImagePaths);
}

 final  List<String> _salesPermitImagePaths;
@override@JsonKey() List<String> get salesPermitImagePaths {
  if (_salesPermitImagePaths is EqualUnmodifiableListView) return _salesPermitImagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salesPermitImagePaths);
}

 final  List<String> _haccpCertificateImagePaths;
@override@JsonKey() List<String> get haccpCertificateImagePaths {
  if (_haccpCertificateImagePaths is EqualUnmodifiableListView) return _haccpCertificateImagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_haccpCertificateImagePaths);
}

 final  List<String> _otherFilePaths;
@override@JsonKey() List<String> get otherFilePaths {
  if (_otherFilePaths is EqualUnmodifiableListView) return _otherFilePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_otherFilePaths);
}

@override@JsonKey() final  bool agreedSellerTerms;
@override@JsonKey() final  bool agreedSettlementTerms;

/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerConversionStateCopyWith<_SellerConversionState> get copyWith => __$SellerConversionStateCopyWithImpl<_SellerConversionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerConversionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.taxInvoiceEmail, taxInvoiceEmail) || other.taxInvoiceEmail == taxInvoiceEmail)&&(identical(other.taxType, taxType) || other.taxType == taxType)&&const DeepCollectionEquality().equals(other._mainPermits, _mainPermits)&&const DeepCollectionEquality().equals(other._subPermits, _subPermits)&&(identical(other.selectedMainPermit, selectedMainPermit) || other.selectedMainPermit == selectedMainPermit)&&(identical(other.selectedSubPermit, selectedSubPermit) || other.selectedSubPermit == selectedSubPermit)&&(identical(other.selectedBank, selectedBank) || other.selectedBank == selectedBank)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.bankbookImagePath, bankbookImagePath) || other.bankbookImagePath == bankbookImagePath)&&const DeepCollectionEquality().equals(other._businessPermitImagePaths, _businessPermitImagePaths)&&const DeepCollectionEquality().equals(other._salesPermitImagePaths, _salesPermitImagePaths)&&const DeepCollectionEquality().equals(other._haccpCertificateImagePaths, _haccpCertificateImagePaths)&&const DeepCollectionEquality().equals(other._otherFilePaths, _otherFilePaths)&&(identical(other.agreedSellerTerms, agreedSellerTerms) || other.agreedSellerTerms == agreedSellerTerms)&&(identical(other.agreedSettlementTerms, agreedSettlementTerms) || other.agreedSettlementTerms == agreedSettlementTerms));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,taxInvoiceEmail,taxType,const DeepCollectionEquality().hash(_mainPermits),const DeepCollectionEquality().hash(_subPermits),selectedMainPermit,selectedSubPermit,selectedBank,bankAccountNumber,bankAccountHolder,bankbookImagePath,const DeepCollectionEquality().hash(_businessPermitImagePaths),const DeepCollectionEquality().hash(_salesPermitImagePaths),const DeepCollectionEquality().hash(_haccpCertificateImagePaths),const DeepCollectionEquality().hash(_otherFilePaths),agreedSellerTerms,agreedSettlementTerms);

@override
String toString() {
  return 'SellerConversionState(isLoading: $isLoading, isSubmitting: $isSubmitting, taxInvoiceEmail: $taxInvoiceEmail, taxType: $taxType, mainPermits: $mainPermits, subPermits: $subPermits, selectedMainPermit: $selectedMainPermit, selectedSubPermit: $selectedSubPermit, selectedBank: $selectedBank, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, bankbookImagePath: $bankbookImagePath, businessPermitImagePaths: $businessPermitImagePaths, salesPermitImagePaths: $salesPermitImagePaths, haccpCertificateImagePaths: $haccpCertificateImagePaths, otherFilePaths: $otherFilePaths, agreedSellerTerms: $agreedSellerTerms, agreedSettlementTerms: $agreedSettlementTerms)';
}


}

/// @nodoc
abstract mixin class _$SellerConversionStateCopyWith<$Res> implements $SellerConversionStateCopyWith<$Res> {
  factory _$SellerConversionStateCopyWith(_SellerConversionState value, $Res Function(_SellerConversionState) _then) = __$SellerConversionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSubmitting, String taxInvoiceEmail, SellerTaxType? taxType, List<CategoryPermitsDto> mainPermits, List<CategoryPermitsDto> subPermits, CategoryPermitsDto? selectedMainPermit, CategoryPermitsDto? selectedSubPermit, MetaOptionDto? selectedBank, String bankAccountNumber, String bankAccountHolder, String? bankbookImagePath, List<String> businessPermitImagePaths, List<String> salesPermitImagePaths, List<String> haccpCertificateImagePaths, List<String> otherFilePaths, bool agreedSellerTerms, bool agreedSettlementTerms
});


@override $CategoryPermitsDtoCopyWith<$Res>? get selectedMainPermit;@override $CategoryPermitsDtoCopyWith<$Res>? get selectedSubPermit;@override $MetaOptionDtoCopyWith<$Res>? get selectedBank;

}
/// @nodoc
class __$SellerConversionStateCopyWithImpl<$Res>
    implements _$SellerConversionStateCopyWith<$Res> {
  __$SellerConversionStateCopyWithImpl(this._self, this._then);

  final _SellerConversionState _self;
  final $Res Function(_SellerConversionState) _then;

/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? taxInvoiceEmail = null,Object? taxType = freezed,Object? mainPermits = null,Object? subPermits = null,Object? selectedMainPermit = freezed,Object? selectedSubPermit = freezed,Object? selectedBank = freezed,Object? bankAccountNumber = null,Object? bankAccountHolder = null,Object? bankbookImagePath = freezed,Object? businessPermitImagePaths = null,Object? salesPermitImagePaths = null,Object? haccpCertificateImagePaths = null,Object? otherFilePaths = null,Object? agreedSellerTerms = null,Object? agreedSettlementTerms = null,}) {
  return _then(_SellerConversionState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,taxInvoiceEmail: null == taxInvoiceEmail ? _self.taxInvoiceEmail : taxInvoiceEmail // ignore: cast_nullable_to_non_nullable
as String,taxType: freezed == taxType ? _self.taxType : taxType // ignore: cast_nullable_to_non_nullable
as SellerTaxType?,mainPermits: null == mainPermits ? _self._mainPermits : mainPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,subPermits: null == subPermits ? _self._subPermits : subPermits // ignore: cast_nullable_to_non_nullable
as List<CategoryPermitsDto>,selectedMainPermit: freezed == selectedMainPermit ? _self.selectedMainPermit : selectedMainPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,selectedSubPermit: freezed == selectedSubPermit ? _self.selectedSubPermit : selectedSubPermit // ignore: cast_nullable_to_non_nullable
as CategoryPermitsDto?,selectedBank: freezed == selectedBank ? _self.selectedBank : selectedBank // ignore: cast_nullable_to_non_nullable
as MetaOptionDto?,bankAccountNumber: null == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String,bankAccountHolder: null == bankAccountHolder ? _self.bankAccountHolder : bankAccountHolder // ignore: cast_nullable_to_non_nullable
as String,bankbookImagePath: freezed == bankbookImagePath ? _self.bankbookImagePath : bankbookImagePath // ignore: cast_nullable_to_non_nullable
as String?,businessPermitImagePaths: null == businessPermitImagePaths ? _self._businessPermitImagePaths : businessPermitImagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,salesPermitImagePaths: null == salesPermitImagePaths ? _self._salesPermitImagePaths : salesPermitImagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,haccpCertificateImagePaths: null == haccpCertificateImagePaths ? _self._haccpCertificateImagePaths : haccpCertificateImagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,otherFilePaths: null == otherFilePaths ? _self._otherFilePaths : otherFilePaths // ignore: cast_nullable_to_non_nullable
as List<String>,agreedSellerTerms: null == agreedSellerTerms ? _self.agreedSellerTerms : agreedSellerTerms // ignore: cast_nullable_to_non_nullable
as bool,agreedSettlementTerms: null == agreedSettlementTerms ? _self.agreedSettlementTerms : agreedSettlementTerms // ignore: cast_nullable_to_non_nullable
as bool,
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
}/// Create a copy of SellerConversionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaOptionDtoCopyWith<$Res>? get selectedBank {
    if (_self.selectedBank == null) {
    return null;
  }

  return $MetaOptionDtoCopyWith<$Res>(_self.selectedBank!, (value) {
    return _then(_self.copyWith(selectedBank: value));
  });
}
}

// dart format on
