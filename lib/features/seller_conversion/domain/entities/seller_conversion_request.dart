import 'package:dio/dio.dart';

import '../enums/seller_tax_type.dart';

class SellerConversionRequest {
  SellerConversionRequest({
    required this.taxInvoiceEmail,
    required this.taxType,
    required this.permitCategoryIds,
    required this.bankCode,
    required this.bankAccountNumber,
    required this.bankAccountHolder,
    required this.bankbookImagePath,
    required this.businessPermitImagePath,
    required this.salesPermitImagePath,
    required this.otherFilePaths,
  });

  final String taxInvoiceEmail;
  final SellerTaxType taxType;
  final List<int> permitCategoryIds;
  final String bankCode;
  final String bankAccountNumber;
  final String bankAccountHolder;
  final String bankbookImagePath;
  final String businessPermitImagePath;
  final String salesPermitImagePath;
  final List<String> otherFilePaths;

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'taxInvoiceEmail': taxInvoiceEmail,
      'taxType': taxType.code,
      'permitCategoryIds': permitCategoryIds,
      'bankCode': bankCode,
      'bankAccountNumber': bankAccountNumber,
      'bankAccountHolder': bankAccountHolder,
      'bankbook': await _toMultipartFile(bankbookImagePath),
      'businessPermit': await _toMultipartFile(businessPermitImagePath),
      'salesPermit': await _toMultipartFile(salesPermitImagePath),
      if (otherFilePaths.isNotEmpty)
        'otherFiles': await Future.wait(otherFilePaths.map(_toMultipartFile)),
    });
  }

  Future<MultipartFile> _toMultipartFile(String path) {
    return MultipartFile.fromFile(path, filename: path.split('/').last);
  }
}
