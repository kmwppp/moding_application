// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileSummaryWrapper {

 ProfileSummaryDto get data;
/// Create a copy of ProfileSummaryWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSummaryWrapperCopyWith<ProfileSummaryWrapper> get copyWith => _$ProfileSummaryWrapperCopyWithImpl<ProfileSummaryWrapper>(this as ProfileSummaryWrapper, _$identity);

  /// Serializes this ProfileSummaryWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSummaryWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileSummaryWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProfileSummaryWrapperCopyWith<$Res>  {
  factory $ProfileSummaryWrapperCopyWith(ProfileSummaryWrapper value, $Res Function(ProfileSummaryWrapper) _then) = _$ProfileSummaryWrapperCopyWithImpl;
@useResult
$Res call({
 ProfileSummaryDto data
});


$ProfileSummaryDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ProfileSummaryWrapperCopyWithImpl<$Res>
    implements $ProfileSummaryWrapperCopyWith<$Res> {
  _$ProfileSummaryWrapperCopyWithImpl(this._self, this._then);

  final ProfileSummaryWrapper _self;
  final $Res Function(ProfileSummaryWrapper) _then;

/// Create a copy of ProfileSummaryWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileSummaryDto,
  ));
}
/// Create a copy of ProfileSummaryWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileSummaryDtoCopyWith<$Res> get data {
  
  return $ProfileSummaryDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileSummaryWrapper].
extension ProfileSummaryWrapperPatterns on ProfileSummaryWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileSummaryWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileSummaryWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileSummaryWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ProfileSummaryWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileSummaryWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileSummaryWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileSummaryDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileSummaryWrapper() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileSummaryDto data)  $default,) {final _that = this;
switch (_that) {
case _ProfileSummaryWrapper():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileSummaryDto data)?  $default,) {final _that = this;
switch (_that) {
case _ProfileSummaryWrapper() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileSummaryWrapper implements ProfileSummaryWrapper {
  const _ProfileSummaryWrapper({required this.data});
  factory _ProfileSummaryWrapper.fromJson(Map<String, dynamic> json) => _$ProfileSummaryWrapperFromJson(json);

@override final  ProfileSummaryDto data;

/// Create a copy of ProfileSummaryWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSummaryWrapperCopyWith<_ProfileSummaryWrapper> get copyWith => __$ProfileSummaryWrapperCopyWithImpl<_ProfileSummaryWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileSummaryWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSummaryWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileSummaryWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProfileSummaryWrapperCopyWith<$Res> implements $ProfileSummaryWrapperCopyWith<$Res> {
  factory _$ProfileSummaryWrapperCopyWith(_ProfileSummaryWrapper value, $Res Function(_ProfileSummaryWrapper) _then) = __$ProfileSummaryWrapperCopyWithImpl;
@override @useResult
$Res call({
 ProfileSummaryDto data
});


@override $ProfileSummaryDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ProfileSummaryWrapperCopyWithImpl<$Res>
    implements _$ProfileSummaryWrapperCopyWith<$Res> {
  __$ProfileSummaryWrapperCopyWithImpl(this._self, this._then);

  final _ProfileSummaryWrapper _self;
  final $Res Function(_ProfileSummaryWrapper) _then;

/// Create a copy of ProfileSummaryWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProfileSummaryWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileSummaryDto,
  ));
}

/// Create a copy of ProfileSummaryWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileSummaryDtoCopyWith<$Res> get data {
  
  return $ProfileSummaryDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ProfileSummaryDto {

 String get businessName; Role get role; ApprovalStatus? get approvalStatus; ProfileOrderCountsDto get orderCounts;
/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSummaryDtoCopyWith<ProfileSummaryDto> get copyWith => _$ProfileSummaryDtoCopyWithImpl<ProfileSummaryDto>(this as ProfileSummaryDto, _$identity);

  /// Serializes this ProfileSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSummaryDto&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.role, role) || other.role == role)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.orderCounts, orderCounts) || other.orderCounts == orderCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessName,role,approvalStatus,orderCounts);

@override
String toString() {
  return 'ProfileSummaryDto(businessName: $businessName, role: $role, approvalStatus: $approvalStatus, orderCounts: $orderCounts)';
}


}

/// @nodoc
abstract mixin class $ProfileSummaryDtoCopyWith<$Res>  {
  factory $ProfileSummaryDtoCopyWith(ProfileSummaryDto value, $Res Function(ProfileSummaryDto) _then) = _$ProfileSummaryDtoCopyWithImpl;
@useResult
$Res call({
 String businessName, Role role, ApprovalStatus? approvalStatus, ProfileOrderCountsDto orderCounts
});


$ProfileOrderCountsDtoCopyWith<$Res> get orderCounts;

}
/// @nodoc
class _$ProfileSummaryDtoCopyWithImpl<$Res>
    implements $ProfileSummaryDtoCopyWith<$Res> {
  _$ProfileSummaryDtoCopyWithImpl(this._self, this._then);

  final ProfileSummaryDto _self;
  final $Res Function(ProfileSummaryDto) _then;

/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessName = null,Object? role = null,Object? approvalStatus = freezed,Object? orderCounts = null,}) {
  return _then(_self.copyWith(
businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as ApprovalStatus?,orderCounts: null == orderCounts ? _self.orderCounts : orderCounts // ignore: cast_nullable_to_non_nullable
as ProfileOrderCountsDto,
  ));
}
/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileOrderCountsDtoCopyWith<$Res> get orderCounts {
  
  return $ProfileOrderCountsDtoCopyWith<$Res>(_self.orderCounts, (value) {
    return _then(_self.copyWith(orderCounts: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileSummaryDto].
extension ProfileSummaryDtoPatterns on ProfileSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String businessName,  Role role,  ApprovalStatus? approvalStatus,  ProfileOrderCountsDto orderCounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
return $default(_that.businessName,_that.role,_that.approvalStatus,_that.orderCounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String businessName,  Role role,  ApprovalStatus? approvalStatus,  ProfileOrderCountsDto orderCounts)  $default,) {final _that = this;
switch (_that) {
case _ProfileSummaryDto():
return $default(_that.businessName,_that.role,_that.approvalStatus,_that.orderCounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String businessName,  Role role,  ApprovalStatus? approvalStatus,  ProfileOrderCountsDto orderCounts)?  $default,) {final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
return $default(_that.businessName,_that.role,_that.approvalStatus,_that.orderCounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileSummaryDto implements ProfileSummaryDto {
  const _ProfileSummaryDto({required this.businessName, required this.role, this.approvalStatus, required this.orderCounts});
  factory _ProfileSummaryDto.fromJson(Map<String, dynamic> json) => _$ProfileSummaryDtoFromJson(json);

@override final  String businessName;
@override final  Role role;
@override final  ApprovalStatus? approvalStatus;
@override final  ProfileOrderCountsDto orderCounts;

/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSummaryDtoCopyWith<_ProfileSummaryDto> get copyWith => __$ProfileSummaryDtoCopyWithImpl<_ProfileSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSummaryDto&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.role, role) || other.role == role)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.orderCounts, orderCounts) || other.orderCounts == orderCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessName,role,approvalStatus,orderCounts);

@override
String toString() {
  return 'ProfileSummaryDto(businessName: $businessName, role: $role, approvalStatus: $approvalStatus, orderCounts: $orderCounts)';
}


}

/// @nodoc
abstract mixin class _$ProfileSummaryDtoCopyWith<$Res> implements $ProfileSummaryDtoCopyWith<$Res> {
  factory _$ProfileSummaryDtoCopyWith(_ProfileSummaryDto value, $Res Function(_ProfileSummaryDto) _then) = __$ProfileSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 String businessName, Role role, ApprovalStatus? approvalStatus, ProfileOrderCountsDto orderCounts
});


@override $ProfileOrderCountsDtoCopyWith<$Res> get orderCounts;

}
/// @nodoc
class __$ProfileSummaryDtoCopyWithImpl<$Res>
    implements _$ProfileSummaryDtoCopyWith<$Res> {
  __$ProfileSummaryDtoCopyWithImpl(this._self, this._then);

  final _ProfileSummaryDto _self;
  final $Res Function(_ProfileSummaryDto) _then;

/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessName = null,Object? role = null,Object? approvalStatus = freezed,Object? orderCounts = null,}) {
  return _then(_ProfileSummaryDto(
businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as ApprovalStatus?,orderCounts: null == orderCounts ? _self.orderCounts : orderCounts // ignore: cast_nullable_to_non_nullable
as ProfileOrderCountsDto,
  ));
}

/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileOrderCountsDtoCopyWith<$Res> get orderCounts {
  
  return $ProfileOrderCountsDtoCopyWith<$Res>(_self.orderCounts, (value) {
    return _then(_self.copyWith(orderCounts: value));
  });
}
}


/// @nodoc
mixin _$ProfileOrderCountsDto {

 int get total; int get paymentPending; int get ordered; int get confirmed; int get shipped; int get delivered; int get purchaseConfirmed; int get claimInProgress; int get cancelled;
/// Create a copy of ProfileOrderCountsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileOrderCountsDtoCopyWith<ProfileOrderCountsDto> get copyWith => _$ProfileOrderCountsDtoCopyWithImpl<ProfileOrderCountsDto>(this as ProfileOrderCountsDto, _$identity);

  /// Serializes this ProfileOrderCountsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileOrderCountsDto&&(identical(other.total, total) || other.total == total)&&(identical(other.paymentPending, paymentPending) || other.paymentPending == paymentPending)&&(identical(other.ordered, ordered) || other.ordered == ordered)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.shipped, shipped) || other.shipped == shipped)&&(identical(other.delivered, delivered) || other.delivered == delivered)&&(identical(other.purchaseConfirmed, purchaseConfirmed) || other.purchaseConfirmed == purchaseConfirmed)&&(identical(other.claimInProgress, claimInProgress) || other.claimInProgress == claimInProgress)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,paymentPending,ordered,confirmed,shipped,delivered,purchaseConfirmed,claimInProgress,cancelled);

@override
String toString() {
  return 'ProfileOrderCountsDto(total: $total, paymentPending: $paymentPending, ordered: $ordered, confirmed: $confirmed, shipped: $shipped, delivered: $delivered, purchaseConfirmed: $purchaseConfirmed, claimInProgress: $claimInProgress, cancelled: $cancelled)';
}


}

/// @nodoc
abstract mixin class $ProfileOrderCountsDtoCopyWith<$Res>  {
  factory $ProfileOrderCountsDtoCopyWith(ProfileOrderCountsDto value, $Res Function(ProfileOrderCountsDto) _then) = _$ProfileOrderCountsDtoCopyWithImpl;
@useResult
$Res call({
 int total, int paymentPending, int ordered, int confirmed, int shipped, int delivered, int purchaseConfirmed, int claimInProgress, int cancelled
});




}
/// @nodoc
class _$ProfileOrderCountsDtoCopyWithImpl<$Res>
    implements $ProfileOrderCountsDtoCopyWith<$Res> {
  _$ProfileOrderCountsDtoCopyWithImpl(this._self, this._then);

  final ProfileOrderCountsDto _self;
  final $Res Function(ProfileOrderCountsDto) _then;

/// Create a copy of ProfileOrderCountsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? paymentPending = null,Object? ordered = null,Object? confirmed = null,Object? shipped = null,Object? delivered = null,Object? purchaseConfirmed = null,Object? claimInProgress = null,Object? cancelled = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paymentPending: null == paymentPending ? _self.paymentPending : paymentPending // ignore: cast_nullable_to_non_nullable
as int,ordered: null == ordered ? _self.ordered : ordered // ignore: cast_nullable_to_non_nullable
as int,confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as int,shipped: null == shipped ? _self.shipped : shipped // ignore: cast_nullable_to_non_nullable
as int,delivered: null == delivered ? _self.delivered : delivered // ignore: cast_nullable_to_non_nullable
as int,purchaseConfirmed: null == purchaseConfirmed ? _self.purchaseConfirmed : purchaseConfirmed // ignore: cast_nullable_to_non_nullable
as int,claimInProgress: null == claimInProgress ? _self.claimInProgress : claimInProgress // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileOrderCountsDto].
extension ProfileOrderCountsDtoPatterns on ProfileOrderCountsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileOrderCountsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileOrderCountsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileOrderCountsDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileOrderCountsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileOrderCountsDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileOrderCountsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int paymentPending,  int ordered,  int confirmed,  int shipped,  int delivered,  int purchaseConfirmed,  int claimInProgress,  int cancelled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileOrderCountsDto() when $default != null:
return $default(_that.total,_that.paymentPending,_that.ordered,_that.confirmed,_that.shipped,_that.delivered,_that.purchaseConfirmed,_that.claimInProgress,_that.cancelled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int paymentPending,  int ordered,  int confirmed,  int shipped,  int delivered,  int purchaseConfirmed,  int claimInProgress,  int cancelled)  $default,) {final _that = this;
switch (_that) {
case _ProfileOrderCountsDto():
return $default(_that.total,_that.paymentPending,_that.ordered,_that.confirmed,_that.shipped,_that.delivered,_that.purchaseConfirmed,_that.claimInProgress,_that.cancelled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int paymentPending,  int ordered,  int confirmed,  int shipped,  int delivered,  int purchaseConfirmed,  int claimInProgress,  int cancelled)?  $default,) {final _that = this;
switch (_that) {
case _ProfileOrderCountsDto() when $default != null:
return $default(_that.total,_that.paymentPending,_that.ordered,_that.confirmed,_that.shipped,_that.delivered,_that.purchaseConfirmed,_that.claimInProgress,_that.cancelled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileOrderCountsDto implements ProfileOrderCountsDto {
  const _ProfileOrderCountsDto({required this.total, required this.paymentPending, required this.ordered, required this.confirmed, required this.shipped, required this.delivered, required this.purchaseConfirmed, required this.claimInProgress, required this.cancelled});
  factory _ProfileOrderCountsDto.fromJson(Map<String, dynamic> json) => _$ProfileOrderCountsDtoFromJson(json);

@override final  int total;
@override final  int paymentPending;
@override final  int ordered;
@override final  int confirmed;
@override final  int shipped;
@override final  int delivered;
@override final  int purchaseConfirmed;
@override final  int claimInProgress;
@override final  int cancelled;

/// Create a copy of ProfileOrderCountsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileOrderCountsDtoCopyWith<_ProfileOrderCountsDto> get copyWith => __$ProfileOrderCountsDtoCopyWithImpl<_ProfileOrderCountsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileOrderCountsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileOrderCountsDto&&(identical(other.total, total) || other.total == total)&&(identical(other.paymentPending, paymentPending) || other.paymentPending == paymentPending)&&(identical(other.ordered, ordered) || other.ordered == ordered)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.shipped, shipped) || other.shipped == shipped)&&(identical(other.delivered, delivered) || other.delivered == delivered)&&(identical(other.purchaseConfirmed, purchaseConfirmed) || other.purchaseConfirmed == purchaseConfirmed)&&(identical(other.claimInProgress, claimInProgress) || other.claimInProgress == claimInProgress)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,paymentPending,ordered,confirmed,shipped,delivered,purchaseConfirmed,claimInProgress,cancelled);

@override
String toString() {
  return 'ProfileOrderCountsDto(total: $total, paymentPending: $paymentPending, ordered: $ordered, confirmed: $confirmed, shipped: $shipped, delivered: $delivered, purchaseConfirmed: $purchaseConfirmed, claimInProgress: $claimInProgress, cancelled: $cancelled)';
}


}

/// @nodoc
abstract mixin class _$ProfileOrderCountsDtoCopyWith<$Res> implements $ProfileOrderCountsDtoCopyWith<$Res> {
  factory _$ProfileOrderCountsDtoCopyWith(_ProfileOrderCountsDto value, $Res Function(_ProfileOrderCountsDto) _then) = __$ProfileOrderCountsDtoCopyWithImpl;
@override @useResult
$Res call({
 int total, int paymentPending, int ordered, int confirmed, int shipped, int delivered, int purchaseConfirmed, int claimInProgress, int cancelled
});




}
/// @nodoc
class __$ProfileOrderCountsDtoCopyWithImpl<$Res>
    implements _$ProfileOrderCountsDtoCopyWith<$Res> {
  __$ProfileOrderCountsDtoCopyWithImpl(this._self, this._then);

  final _ProfileOrderCountsDto _self;
  final $Res Function(_ProfileOrderCountsDto) _then;

/// Create a copy of ProfileOrderCountsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? paymentPending = null,Object? ordered = null,Object? confirmed = null,Object? shipped = null,Object? delivered = null,Object? purchaseConfirmed = null,Object? claimInProgress = null,Object? cancelled = null,}) {
  return _then(_ProfileOrderCountsDto(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paymentPending: null == paymentPending ? _self.paymentPending : paymentPending // ignore: cast_nullable_to_non_nullable
as int,ordered: null == ordered ? _self.ordered : ordered // ignore: cast_nullable_to_non_nullable
as int,confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as int,shipped: null == shipped ? _self.shipped : shipped // ignore: cast_nullable_to_non_nullable
as int,delivered: null == delivered ? _self.delivered : delivered // ignore: cast_nullable_to_non_nullable
as int,purchaseConfirmed: null == purchaseConfirmed ? _self.purchaseConfirmed : purchaseConfirmed // ignore: cast_nullable_to_non_nullable
as int,claimInProgress: null == claimInProgress ? _self.claimInProgress : claimInProgress // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
