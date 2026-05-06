import 'package:dio/dio.dart';

class SignupInfo {
  final String loginId;
  final String email;
  final String phone;
  final String password;
  final String businessType;
  final String businessName;
  final String ownerName;
  final String zipCode;
  final String address;
  final String addressDetail;
  final String businessNumber;
  final String corporateNumber;
  final int? businessCategoryId;
  final String? businessLicenseFile;

  SignupInfo({
    required this.loginId,
    required this.email,
    required this.phone,
    required this.password,
    required this.businessType,
    required this.businessName,
    required this.ownerName,
    required this.zipCode,
    required this.address,
    required this.addressDetail,
    required this.businessNumber,
    required this.corporateNumber,
    this.businessCategoryId = 0,
    required this.businessLicenseFile,
  });

  Future<FormData> getFormData(SignupInfo info) async {
    return FormData.fromMap({
      "loginId": info.loginId,
      "email": info.email,
      "phone": info.phone,
      "password": info.password,
      "businessType": info.businessType,
      "businessName": info.businessName,
      "ownerName": info.ownerName,
      "zipCode": info.zipCode,
      "address": info.address,
      "addressDetail": info.addressDetail,
      "businessNumber": info.businessNumber,
      "corporateNumber": info.corporateNumber,
      "businessCategoryId": info.businessCategoryId,

      if (info.businessLicenseFile != null)
        "businessLicenseFile": await MultipartFile.fromFile(
          info.businessLicenseFile!,
          filename: info.businessLicenseFile!.split('/').last,
        ),
    });
  }
}
