// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_recommand_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductRecommandDto {

 List<RecommandDto> get content; int get number; int get size; int get totalElements; int get totalPages;
/// Create a copy of ProductRecommandDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductRecommandDtoCopyWith<ProductRecommandDto> get copyWith => _$ProductRecommandDtoCopyWithImpl<ProductRecommandDto>(this as ProductRecommandDto, _$identity);

  /// Serializes this ProductRecommandDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductRecommandDto&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'ProductRecommandDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $ProductRecommandDtoCopyWith<$Res>  {
  factory $ProductRecommandDtoCopyWith(ProductRecommandDto value, $Res Function(ProductRecommandDto) _then) = _$ProductRecommandDtoCopyWithImpl;
@useResult
$Res call({
 List<RecommandDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class _$ProductRecommandDtoCopyWithImpl<$Res>
    implements $ProductRecommandDtoCopyWith<$Res> {
  _$ProductRecommandDtoCopyWithImpl(this._self, this._then);

  final ProductRecommandDto _self;
  final $Res Function(ProductRecommandDto) _then;

/// Create a copy of ProductRecommandDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductRecommandDto].
extension ProductRecommandDtoPatterns on ProductRecommandDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductRecommandDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductRecommandDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductRecommandDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductRecommandDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductRecommandDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductRecommandDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RecommandDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductRecommandDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RecommandDto> content,  int number,  int size,  int totalElements,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _ProductRecommandDto():
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RecommandDto> content,  int number,  int size,  int totalElements,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _ProductRecommandDto() when $default != null:
return $default(_that.content,_that.number,_that.size,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductRecommandDto implements ProductRecommandDto {
  const _ProductRecommandDto({required final  List<RecommandDto> content, required this.number, required this.size, required this.totalElements, required this.totalPages}): _content = content;
  factory _ProductRecommandDto.fromJson(Map<String, dynamic> json) => _$ProductRecommandDtoFromJson(json);

 final  List<RecommandDto> _content;
@override List<RecommandDto> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int number;
@override final  int size;
@override final  int totalElements;
@override final  int totalPages;

/// Create a copy of ProductRecommandDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductRecommandDtoCopyWith<_ProductRecommandDto> get copyWith => __$ProductRecommandDtoCopyWithImpl<_ProductRecommandDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductRecommandDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductRecommandDto&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.number, number) || other.number == number)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),number,size,totalElements,totalPages);

@override
String toString() {
  return 'ProductRecommandDto(content: $content, number: $number, size: $size, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ProductRecommandDtoCopyWith<$Res> implements $ProductRecommandDtoCopyWith<$Res> {
  factory _$ProductRecommandDtoCopyWith(_ProductRecommandDto value, $Res Function(_ProductRecommandDto) _then) = __$ProductRecommandDtoCopyWithImpl;
@override @useResult
$Res call({
 List<RecommandDto> content, int number, int size, int totalElements, int totalPages
});




}
/// @nodoc
class __$ProductRecommandDtoCopyWithImpl<$Res>
    implements _$ProductRecommandDtoCopyWith<$Res> {
  __$ProductRecommandDtoCopyWithImpl(this._self, this._then);

  final _ProductRecommandDto _self;
  final $Res Function(_ProductRecommandDto) _then;

/// Create a copy of ProductRecommandDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? number = null,Object? size = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_ProductRecommandDto(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<RecommandDto>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RecommandDto {

 int get id; String get productCode; String get sellerCompanyName; String get categoryFullPath; String get name; String get status; String get thumbnailImageUrl; int? get lowestPrice; int? get lowestDiscountAmount; int? get lowestDiscountRate; int? get lowestSellingPrice; int get lowestPriceStockQuantity; List<String> get tags; bool get isHaccpCertified;@LocalDateTimeConverter() DateTime get createdAt;@LocalDateTimeConverter() DateTime get updatedAt;
/// Create a copy of RecommandDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommandDtoCopyWith<RecommandDto> get copyWith => _$RecommandDtoCopyWithImpl<RecommandDto>(this as RecommandDto, _$identity);

  /// Serializes this RecommandDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommandDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.sellerCompanyName, sellerCompanyName) || other.sellerCompanyName == sellerCompanyName)&&(identical(other.categoryFullPath, categoryFullPath) || other.categoryFullPath == categoryFullPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.lowestPrice, lowestPrice) || other.lowestPrice == lowestPrice)&&(identical(other.lowestDiscountAmount, lowestDiscountAmount) || other.lowestDiscountAmount == lowestDiscountAmount)&&(identical(other.lowestDiscountRate, lowestDiscountRate) || other.lowestDiscountRate == lowestDiscountRate)&&(identical(other.lowestSellingPrice, lowestSellingPrice) || other.lowestSellingPrice == lowestSellingPrice)&&(identical(other.lowestPriceStockQuantity, lowestPriceStockQuantity) || other.lowestPriceStockQuantity == lowestPriceStockQuantity)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isHaccpCertified, isHaccpCertified) || other.isHaccpCertified == isHaccpCertified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productCode,sellerCompanyName,categoryFullPath,name,status,thumbnailImageUrl,lowestPrice,lowestDiscountAmount,lowestDiscountRate,lowestSellingPrice,lowestPriceStockQuantity,const DeepCollectionEquality().hash(tags),isHaccpCertified,createdAt,updatedAt);

@override
String toString() {
  return 'RecommandDto(id: $id, productCode: $productCode, sellerCompanyName: $sellerCompanyName, categoryFullPath: $categoryFullPath, name: $name, status: $status, thumbnailImageUrl: $thumbnailImageUrl, lowestPrice: $lowestPrice, lowestDiscountAmount: $lowestDiscountAmount, lowestDiscountRate: $lowestDiscountRate, lowestSellingPrice: $lowestSellingPrice, lowestPriceStockQuantity: $lowestPriceStockQuantity, tags: $tags, isHaccpCertified: $isHaccpCertified, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecommandDtoCopyWith<$Res>  {
  factory $RecommandDtoCopyWith(RecommandDto value, $Res Function(RecommandDto) _then) = _$RecommandDtoCopyWithImpl;
@useResult
$Res call({
 int id, String productCode, String sellerCompanyName, String categoryFullPath, String name, String status, String thumbnailImageUrl, int? lowestPrice, int? lowestDiscountAmount, int? lowestDiscountRate, int? lowestSellingPrice, int lowestPriceStockQuantity, List<String> tags, bool isHaccpCertified,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class _$RecommandDtoCopyWithImpl<$Res>
    implements $RecommandDtoCopyWith<$Res> {
  _$RecommandDtoCopyWithImpl(this._self, this._then);

  final RecommandDto _self;
  final $Res Function(RecommandDto) _then;

/// Create a copy of RecommandDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productCode = null,Object? sellerCompanyName = null,Object? categoryFullPath = null,Object? name = null,Object? status = null,Object? thumbnailImageUrl = null,Object? lowestPrice = freezed,Object? lowestDiscountAmount = freezed,Object? lowestDiscountRate = freezed,Object? lowestSellingPrice = freezed,Object? lowestPriceStockQuantity = null,Object? tags = null,Object? isHaccpCertified = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,sellerCompanyName: null == sellerCompanyName ? _self.sellerCompanyName : sellerCompanyName // ignore: cast_nullable_to_non_nullable
as String,categoryFullPath: null == categoryFullPath ? _self.categoryFullPath : categoryFullPath // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,lowestPrice: freezed == lowestPrice ? _self.lowestPrice : lowestPrice // ignore: cast_nullable_to_non_nullable
as int?,lowestDiscountAmount: freezed == lowestDiscountAmount ? _self.lowestDiscountAmount : lowestDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,lowestDiscountRate: freezed == lowestDiscountRate ? _self.lowestDiscountRate : lowestDiscountRate // ignore: cast_nullable_to_non_nullable
as int?,lowestSellingPrice: freezed == lowestSellingPrice ? _self.lowestSellingPrice : lowestSellingPrice // ignore: cast_nullable_to_non_nullable
as int?,lowestPriceStockQuantity: null == lowestPriceStockQuantity ? _self.lowestPriceStockQuantity : lowestPriceStockQuantity // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isHaccpCertified: null == isHaccpCertified ? _self.isHaccpCertified : isHaccpCertified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [RecommandDto].
extension RecommandDtoPatterns on RecommandDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommandDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommandDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommandDto value)  $default,){
final _that = this;
switch (_that) {
case _RecommandDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommandDto value)?  $default,){
final _that = this;
switch (_that) {
case _RecommandDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String productCode,  String sellerCompanyName,  String categoryFullPath,  String name,  String status,  String thumbnailImageUrl,  int? lowestPrice,  int? lowestDiscountAmount,  int? lowestDiscountRate,  int? lowestSellingPrice,  int lowestPriceStockQuantity,  List<String> tags,  bool isHaccpCertified, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommandDto() when $default != null:
return $default(_that.id,_that.productCode,_that.sellerCompanyName,_that.categoryFullPath,_that.name,_that.status,_that.thumbnailImageUrl,_that.lowestPrice,_that.lowestDiscountAmount,_that.lowestDiscountRate,_that.lowestSellingPrice,_that.lowestPriceStockQuantity,_that.tags,_that.isHaccpCertified,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String productCode,  String sellerCompanyName,  String categoryFullPath,  String name,  String status,  String thumbnailImageUrl,  int? lowestPrice,  int? lowestDiscountAmount,  int? lowestDiscountRate,  int? lowestSellingPrice,  int lowestPriceStockQuantity,  List<String> tags,  bool isHaccpCertified, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RecommandDto():
return $default(_that.id,_that.productCode,_that.sellerCompanyName,_that.categoryFullPath,_that.name,_that.status,_that.thumbnailImageUrl,_that.lowestPrice,_that.lowestDiscountAmount,_that.lowestDiscountRate,_that.lowestSellingPrice,_that.lowestPriceStockQuantity,_that.tags,_that.isHaccpCertified,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String productCode,  String sellerCompanyName,  String categoryFullPath,  String name,  String status,  String thumbnailImageUrl,  int? lowestPrice,  int? lowestDiscountAmount,  int? lowestDiscountRate,  int? lowestSellingPrice,  int lowestPriceStockQuantity,  List<String> tags,  bool isHaccpCertified, @LocalDateTimeConverter()  DateTime createdAt, @LocalDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecommandDto() when $default != null:
return $default(_that.id,_that.productCode,_that.sellerCompanyName,_that.categoryFullPath,_that.name,_that.status,_that.thumbnailImageUrl,_that.lowestPrice,_that.lowestDiscountAmount,_that.lowestDiscountRate,_that.lowestSellingPrice,_that.lowestPriceStockQuantity,_that.tags,_that.isHaccpCertified,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommandDto implements RecommandDto {
  const _RecommandDto({required this.id, required this.productCode, required this.sellerCompanyName, required this.categoryFullPath, required this.name, required this.status, required this.thumbnailImageUrl, required this.lowestPrice, required this.lowestDiscountAmount, required this.lowestDiscountRate, required this.lowestSellingPrice, required this.lowestPriceStockQuantity, required final  List<String> tags, this.isHaccpCertified = false, @LocalDateTimeConverter() required this.createdAt, @LocalDateTimeConverter() required this.updatedAt}): _tags = tags;
  factory _RecommandDto.fromJson(Map<String, dynamic> json) => _$RecommandDtoFromJson(json);

@override final  int id;
@override final  String productCode;
@override final  String sellerCompanyName;
@override final  String categoryFullPath;
@override final  String name;
@override final  String status;
@override final  String thumbnailImageUrl;
@override final  int? lowestPrice;
@override final  int? lowestDiscountAmount;
@override final  int? lowestDiscountRate;
@override final  int? lowestSellingPrice;
@override final  int lowestPriceStockQuantity;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  bool isHaccpCertified;
@override@LocalDateTimeConverter() final  DateTime createdAt;
@override@LocalDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of RecommandDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommandDtoCopyWith<_RecommandDto> get copyWith => __$RecommandDtoCopyWithImpl<_RecommandDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommandDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommandDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.sellerCompanyName, sellerCompanyName) || other.sellerCompanyName == sellerCompanyName)&&(identical(other.categoryFullPath, categoryFullPath) || other.categoryFullPath == categoryFullPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailImageUrl, thumbnailImageUrl) || other.thumbnailImageUrl == thumbnailImageUrl)&&(identical(other.lowestPrice, lowestPrice) || other.lowestPrice == lowestPrice)&&(identical(other.lowestDiscountAmount, lowestDiscountAmount) || other.lowestDiscountAmount == lowestDiscountAmount)&&(identical(other.lowestDiscountRate, lowestDiscountRate) || other.lowestDiscountRate == lowestDiscountRate)&&(identical(other.lowestSellingPrice, lowestSellingPrice) || other.lowestSellingPrice == lowestSellingPrice)&&(identical(other.lowestPriceStockQuantity, lowestPriceStockQuantity) || other.lowestPriceStockQuantity == lowestPriceStockQuantity)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isHaccpCertified, isHaccpCertified) || other.isHaccpCertified == isHaccpCertified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productCode,sellerCompanyName,categoryFullPath,name,status,thumbnailImageUrl,lowestPrice,lowestDiscountAmount,lowestDiscountRate,lowestSellingPrice,lowestPriceStockQuantity,const DeepCollectionEquality().hash(_tags),isHaccpCertified,createdAt,updatedAt);

@override
String toString() {
  return 'RecommandDto(id: $id, productCode: $productCode, sellerCompanyName: $sellerCompanyName, categoryFullPath: $categoryFullPath, name: $name, status: $status, thumbnailImageUrl: $thumbnailImageUrl, lowestPrice: $lowestPrice, lowestDiscountAmount: $lowestDiscountAmount, lowestDiscountRate: $lowestDiscountRate, lowestSellingPrice: $lowestSellingPrice, lowestPriceStockQuantity: $lowestPriceStockQuantity, tags: $tags, isHaccpCertified: $isHaccpCertified, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecommandDtoCopyWith<$Res> implements $RecommandDtoCopyWith<$Res> {
  factory _$RecommandDtoCopyWith(_RecommandDto value, $Res Function(_RecommandDto) _then) = __$RecommandDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String productCode, String sellerCompanyName, String categoryFullPath, String name, String status, String thumbnailImageUrl, int? lowestPrice, int? lowestDiscountAmount, int? lowestDiscountRate, int? lowestSellingPrice, int lowestPriceStockQuantity, List<String> tags, bool isHaccpCertified,@LocalDateTimeConverter() DateTime createdAt,@LocalDateTimeConverter() DateTime updatedAt
});




}
/// @nodoc
class __$RecommandDtoCopyWithImpl<$Res>
    implements _$RecommandDtoCopyWith<$Res> {
  __$RecommandDtoCopyWithImpl(this._self, this._then);

  final _RecommandDto _self;
  final $Res Function(_RecommandDto) _then;

/// Create a copy of RecommandDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productCode = null,Object? sellerCompanyName = null,Object? categoryFullPath = null,Object? name = null,Object? status = null,Object? thumbnailImageUrl = null,Object? lowestPrice = freezed,Object? lowestDiscountAmount = freezed,Object? lowestDiscountRate = freezed,Object? lowestSellingPrice = freezed,Object? lowestPriceStockQuantity = null,Object? tags = null,Object? isHaccpCertified = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_RecommandDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,sellerCompanyName: null == sellerCompanyName ? _self.sellerCompanyName : sellerCompanyName // ignore: cast_nullable_to_non_nullable
as String,categoryFullPath: null == categoryFullPath ? _self.categoryFullPath : categoryFullPath // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,thumbnailImageUrl: null == thumbnailImageUrl ? _self.thumbnailImageUrl : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
as String,lowestPrice: freezed == lowestPrice ? _self.lowestPrice : lowestPrice // ignore: cast_nullable_to_non_nullable
as int?,lowestDiscountAmount: freezed == lowestDiscountAmount ? _self.lowestDiscountAmount : lowestDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,lowestDiscountRate: freezed == lowestDiscountRate ? _self.lowestDiscountRate : lowestDiscountRate // ignore: cast_nullable_to_non_nullable
as int?,lowestSellingPrice: freezed == lowestSellingPrice ? _self.lowestSellingPrice : lowestSellingPrice // ignore: cast_nullable_to_non_nullable
as int?,lowestPriceStockQuantity: null == lowestPriceStockQuantity ? _self.lowestPriceStockQuantity : lowestPriceStockQuantity // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isHaccpCertified: null == isHaccpCertified ? _self.isHaccpCertified : isHaccpCertified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
