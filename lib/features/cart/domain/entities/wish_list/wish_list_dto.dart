import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'wish_list_dto.freezed.dart';
part 'wish_list_dto.g.dart';

@freezed
abstract class WishListDto with _$WishListDto {
  const factory WishListDto({
    required List<ProductDto> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _WishListDto;

  factory WishListDto.fromJson(Map<String, dynamic> json) =>
      _$WishListDtoFromJson(json);
}

@freezed
abstract class ProductDto with _$ProductDto {
  const factory ProductDto({
    required int id,
    required String productCode,
    required String sellerCompanyName,
    required String categoryFullPath,
    required String name,
    required String status,
    required String thumbnailImageUrl,
    required int lowestSellingPrice,
    required int lowestPriceStockQuantity,
    required List<String> tags,
    @LocalDateTimeConverter() required DateTime createdAt,
    @LocalDateTimeConverter() required DateTime updatedAt,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
