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
    required this.businessPermitImagePaths,
    required this.salesPermitImagePaths,
    required this.haccpCertificateImagePaths,
    required this.otherFilePaths,
  });

  final String taxInvoiceEmail;
  final SellerTaxType taxType;
  final List<int> permitCategoryIds;
  final String bankCode;
  final String bankAccountNumber;
  final String bankAccountHolder;
  final String bankbookImagePath;
  final List<String> businessPermitImagePaths;
  final List<String> salesPermitImagePaths;
  final List<String> haccpCertificateImagePaths;
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
      if (businessPermitImagePaths.isNotEmpty)
        'businessPermit': await Future.wait(
          businessPermitImagePaths.map(_toMultipartFile),
        ),
      if (salesPermitImagePaths.isNotEmpty)
        'mailOrderSalesReport': await Future.wait(
          salesPermitImagePaths.map(_toMultipartFile),
        ),
      if (haccpCertificateImagePaths.isNotEmpty)
        'haccpCertificate': await Future.wait(
          haccpCertificateImagePaths.map(_toMultipartFile),
        ),
      if (otherFilePaths.isNotEmpty)
        'otherFiles': await Future.wait(otherFilePaths.map(_toMultipartFile)),
    });
  }

  Future<MultipartFile> _toMultipartFile(String path) {
    return MultipartFile.fromFile(path, filename: path.split('/').last);
  }
}
