import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/business_profile/domain/entities/business_profile_response_dto.dart';
import 'package:moding_application/features/business_profile/domain/entities/change_request_business_profile_response_dto.dart';
import 'package:moding_application/features/business_profile/domain/repositories/business_profile_repository.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data_source/business_profile_data_source.dart';

part 'business_profile_repository_impl.g.dart';

@riverpod
BusinessProfileRepository businessProfileRepository(Ref ref) {
  final dataSource = ref.watch(businessProfileDataSourceProvider);
  return BusinessProfileRepositoryImpl(dataSource);
}

class BusinessProfileRepositoryImpl implements BusinessProfileRepository {
  final BusinessProfileDataSource _dataSource;

  BusinessProfileRepositoryImpl(this._dataSource);

  @override
  Future<BusinessProfileResponseWrapper> getBusinessProfileInfo() async {
    final response = await _dataSource.getMyBusinessProfileInfo();
    return BusinessProfileResponseWrapper.fromJson(response);
  }

  @override
  Future<List<CategoryRequestModel>> getMainCategoryList() async {
    final response = await _dataSource.getMainCategoryList();
    final data = response['data'] as List;
    return data
        .map((item) => CategoryRequestModel(item['id'], item['name'] as String))
        .toList();
  }

  @override
  Future<List<CategoryRequestModel>> getSubCategoryList(int parentId) async {
    final response = await _dataSource.getSubCategoryList(parentId);
    final data = response['data'] as List;
    return data
        .map((item) => CategoryRequestModel(item['id'], item['name'] as String))
        .toList();
  }

  @override
  Future<ResponseModel> putMyBusinessProfileInfo({
    required String businessPhone,
    int? businessCategoryId,
    String? businessLicenseFile,
  }) async {
    try {
      final request = <String, dynamic>{'businessPhone': businessPhone};
      if (businessCategoryId != null) {
        request['businessCategoryId'] = businessCategoryId;
      }
      if (businessLicenseFile != null) {
        request['businessLicenseFile'] = await MultipartFile.fromFile(
          businessLicenseFile,
          filename: businessLicenseFile.split('/').last,
        );
      }

      final formData = FormData.fromMap(request);

      final response = await _dataSource.putMyBusinessProfileInfo(formData);
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(
        success: false,
        message: '사업자 정보 변경 신청에 실패했습니다.',
      );
    } catch (_) {
      return const ResponseModel(
        success: false,
        message: '사업자 정보 변경 신청에 실패했습니다.',
      );
    }
  }

  @override
  Future<ChangeRequestBusinessProfileResponseWrapper>
  getChangeRequestBusinessProfile() async {
    final response = await _dataSource.getChangeRequestBusinessProfile();
    return ChangeRequestBusinessProfileResponseWrapper.fromJson(response);
  }
}
