import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'product_recommand_dto.freezed.dart';
part 'product_recommand_dto.g.dart';

@freezed
abstract class ProductRecommandDto with _$ProductRecommandDto {
  const factory ProductRecommandDto({
    required List<RecommandDto> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _ProductRecommandDto;

  factory ProductRecommandDto.fromJson(Map<String, dynamic> json) =>
      _$ProductRecommandDtoFromJson(json);
}

@freezed
abstract class RecommandDto with _$RecommandDto {
  const factory RecommandDto({
    required int id,
    required String productCode,
    required String sellerCompanyName,
    required String categoryFullPath,
    required String name,
    required String status,
    required String thumbnailImageUrl,
    required int? lowestPrice,
    required int? lowestDiscountAmount,
    required int? lowestDiscountRate,
    required int? lowestSellingPrice,
    required int lowestPriceStockQuantity,
    required List<String> tags,
    @Default(false) bool isHaccpCertified,
    @LocalDateTimeConverter() required DateTime createdAt,
    @LocalDateTimeConverter() required DateTime updatedAt,
  }) = _RecommandDto;

  factory RecommandDto.fromJson(Map<String, dynamic> json) =>
      _$RecommandDtoFromJson(json);
}
