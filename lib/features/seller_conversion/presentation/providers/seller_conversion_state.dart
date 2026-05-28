import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/meta/domain/entities/meta_option_dto.dart';
import 'package:moding_application/features/seller_conversion/domain/entities/category_permits_dto.dart';
import 'package:moding_application/features/seller_conversion/domain/enums/seller_tax_type.dart';

part 'seller_conversion_state.freezed.dart';

@freezed
abstract class SellerConversionState with _$SellerConversionState {
  const factory SellerConversionState({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default('') String taxInvoiceEmail,
    SellerTaxType? taxType,
    @Default([]) List<CategoryPermitsDto> mainPermits,
    @Default([]) List<CategoryPermitsDto> subPermits,
    CategoryPermitsDto? selectedMainPermit,
    CategoryPermitsDto? selectedSubPermit,
    MetaOptionDto? selectedBank,
    @Default('') String bankAccountNumber,
    @Default('') String bankAccountHolder,
    String? bankbookImagePath,
    String? businessPermitImagePath,
    String? salesPermitImagePath,
    @Default([]) List<String> otherFilePaths,
  }) = _SellerConversionState;

  factory SellerConversionState.initial() => SellerConversionState();
}
