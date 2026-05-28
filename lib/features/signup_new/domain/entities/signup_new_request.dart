import 'package:dio/dio.dart';

class SignupNewRequest {
  const SignupNewRequest({
    required this.loginId,
    required this.email,
    required this.password,
    required this.businessNumber,
    required this.businessName,
    required this.ownerName,
    required this.zipCode,
    required this.sigunguCode,
    required this.address,
    required this.addressDetail,
    required this.industry,
    required this.industryClass,
    required this.corporateNumber,
    required this.businessCategoryId,
    required this.businessLicenseFilePath,
    required this.identityVerificationKey,
  });

  final String loginId;
  final String email;
  final String password;
  final String businessNumber;
  final String businessName;
  final String ownerName;
  final String zipCode;
  final String sigunguCode;
  final String address;
  final String addressDetail;
  final String industry;
  final String industryClass;
  final String corporateNumber;
  final int businessCategoryId;
  final String businessLicenseFilePath;
  final String identityVerificationKey;

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'loginId': loginId,
      'email': email,
      'password': password,
      'businessNumber': businessNumber,
      'businessName': businessName,
      'ownerName': ownerName,
      'zipCode': zipCode,
      'sigunguCode': sigunguCode,
      'address': address,
      'addressDetail': addressDetail,
      'industry': industry,
      'industryClass': industryClass,
      'corporateNumber': corporateNumber,
      'businessCategoryId': businessCategoryId,
      'businessLicenseFile': await MultipartFile.fromFile(
        businessLicenseFilePath,
        filename: businessLicenseFilePath.split('/').last,
      ),
      'identityVerificationKey': identityVerificationKey,
    });
  }
}
