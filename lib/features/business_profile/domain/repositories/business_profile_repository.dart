import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/business_profile/domain/entities/business_profile_response_dto.dart';
import 'package:moding_application/features/business_profile/domain/entities/change_request_business_profile_response_dto.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';

abstract class BusinessProfileRepository {
  Future<BusinessProfileResponseWrapper> getBusinessProfileInfo();

  Future<List<CategoryRequestModel>> getMainCategoryList();

  Future<List<CategoryRequestModel>> getSubCategoryList(int parentId);

  Future<ResponseModel> putMyBusinessProfileInfo({
    required String businessPhone,
    int? businessCategoryId,
    String? businessLicenseFile,
  });

  Future<ChangeRequestBusinessProfileResponseWrapper>
  getChangeRequestBusinessProfile();
}
