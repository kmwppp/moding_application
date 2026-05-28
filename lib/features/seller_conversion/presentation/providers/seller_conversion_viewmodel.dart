import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/meta/domain/entities/meta_option_dto.dart';
import 'package:moding_application/features/seller_conversion/data/repositories/seller_conversion_repository_impl.dart';
import 'package:moding_application/features/seller_conversion/domain/entities/category_permits_dto.dart';
import 'package:moding_application/features/seller_conversion/domain/entities/seller_conversion_request.dart';
import 'package:moding_application/features/seller_conversion/domain/enums/seller_tax_type.dart';
import 'package:moding_application/features/seller_conversion/presentation/providers/seller_conversion_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'seller_conversion_viewmodel.g.dart';

@Riverpod()
class SellerConversionViewModel extends _$SellerConversionViewModel {
  @override
  SellerConversionState build() {
    return SellerConversionState.initial();
  }

  Future<void> getMainPermits() async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(sellerConversionRepositoryProvider);
      final response = await repository.getMainPermits();
      state = state.copyWith(isLoading: false, mainPermits: response.data);
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> selectMainPermit(CategoryPermitsDto? permit) async {
    state = state.copyWith(
      selectedMainPermit: permit,
      selectedSubPermit: null,
      subPermits: const [],
    );
    if (permit == null) return;

    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(sellerConversionRepositoryProvider);
      final response = await repository.getSubPermits(parentId: permit.id);
      state = state.copyWith(isLoading: false, subPermits: response.data);
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(isLoading: false);
    }
  }

  void selectSubPermit(CategoryPermitsDto? permit) {
    state = state.copyWith(selectedSubPermit: permit);
  }

  void updateTaxInvoiceEmail(String value) {
    state = state.copyWith(taxInvoiceEmail: value);
  }

  void selectTaxType(SellerTaxType? value) {
    state = state.copyWith(taxType: value);
  }

  void selectBank(MetaOptionDto bank) {
    state = state.copyWith(selectedBank: bank);
  }

  void updateBankAccountNumber(String value) {
    state = state.copyWith(bankAccountNumber: value);
  }

  void updateBankAccountHolder(String value) {
    state = state.copyWith(bankAccountHolder: value);
  }

  Future<void> pickBankbookImage(ImageSource source) {
    return _pickSingleImage(
      source: source,
      onSelected: (path) => state = state.copyWith(bankbookImagePath: path),
    );
  }

  Future<void> pickBusinessPermitImage(ImageSource source) {
    return _pickSingleImage(
      source: source,
      onSelected: (path) =>
          state = state.copyWith(businessPermitImagePath: path),
    );
  }

  Future<void> pickSalesPermitImage(ImageSource source) {
    return _pickSingleImage(
      source: source,
      onSelected: (path) => state = state.copyWith(salesPermitImagePath: path),
    );
  }

  Future<void> pickOtherFilesFromGallery() async {
    try {
      final picker = ImagePicker();
      final images = await picker.pickMultiImage(imageQuality: 85);
      if (images.isEmpty) return;

      state = state.copyWith(
        otherFilePaths: [
          ...state.otherFilePaths,
          ...images.map((image) => image.path),
        ],
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> pickOtherFileFromCamera() async {
    return _pickSingleImage(
      source: ImageSource.camera,
      onSelected: (path) => state = state.copyWith(
        otherFilePaths: [...state.otherFilePaths, path],
      ),
    );
  }

  void removeBankbookImage() {
    state = state.copyWith(bankbookImagePath: null);
  }

  void removeBusinessPermitImage() {
    state = state.copyWith(businessPermitImagePath: null);
  }

  void removeSalesPermitImage() {
    state = state.copyWith(salesPermitImagePath: null);
  }

  void removeOtherFile(String path) {
    state = state.copyWith(
      otherFilePaths: state.otherFilePaths
          .where((file) => file != path)
          .toList(),
    );
  }

  SellerConversionRequest buildRequest() {
    return SellerConversionRequest(
      taxInvoiceEmail: state.taxInvoiceEmail.trim(),
      taxType: state.taxType!,
      permitCategoryIds: [state.selectedSubPermit!.id],
      bankCode: state.selectedBank!.value,
      bankAccountNumber: state.bankAccountNumber.trim(),
      bankAccountHolder: state.bankAccountHolder.trim(),
      bankbookImagePath: state.bankbookImagePath!,
      businessPermitImagePath: state.businessPermitImagePath!,
      salesPermitImagePath: state.salesPermitImagePath!,
      otherFilePaths: state.otherFilePaths,
    );
  }

  Future<ResponseModel> submitSellerConversion() async {
    state = state.copyWith(isSubmitting: true);
    try {
      final request = buildRequest();
      final repository = ref.read(sellerConversionRepositoryProvider);
      final response = await repository.postSellerConversion(request: request);
      state = state.copyWith(isSubmitting: false);
      return response;
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(isSubmitting: false);
      return const ResponseModel(message: '판매자 전환 신청 중 오류가 발생했습니다.');
    }
  }

  Future<void> _pickSingleImage({
    required ImageSource source,
    required ValueChanged<String> onSelected,
  }) async {
    try {
      final picker = ImagePicker();
      final image = await picker.pickImage(source: source, imageQuality: 85);
      if (image == null) return;

      onSelected(image.path);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
