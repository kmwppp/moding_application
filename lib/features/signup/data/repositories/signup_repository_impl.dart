import 'package:dio/dio.dart';
import 'package:moding_application/features/signup/data/data_source/signup_data_source.dart';
import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';
import 'package:moding_application/features/signup/domain/entities/signup_info.dart';
import 'package:moding_application/features/signup/domain/entities/signup_response_model.dart';
import 'package:moding_application/features/signup/domain/repositories/signup_repository.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/business_type_model.dart';

part 'signup_repository_impl.g.dart';

@riverpod
SignupRepository signupRepository(Ref ref) {
  final dataSource = ref.watch(signupDataSourceProvider);
  return SignupRepositoryImpl(dataSource);
}

class SignupRepositoryImpl implements SignupRepository {
  final SignupDataSource _dataSource;

  SignupRepositoryImpl(this._dataSource);

  @override
  Future<SignupResponseModel> executeSignUp(SignupInfo request) async {
    try {
      final response = await _dataSource.executeSignUp(request);
      // 200 OK인 경우
      return SignupResponseModel.fromJson(response);
    } on DioException catch (e) {
      // ⭐ 400, 409, 422 등 서버가 에러와 함께 JSON 데이터를 보낸 경우
      if (e.response != null && e.response?.data != null) {
        try {
          // 서버가 보낸 {"success": false, "message": "이미 등록된..."} 파싱
          return SignupResponseModel.fromJson(e.response!.data);
        } catch (parseError) {
          // JSON 파싱 자체가 실패한 경우
          return SignupResponseModel(success: false, message: "서버 응답 형식 오류");
        }
      }

      // 응답 바디가 아예 없는 네트워크 단절 등의 오류
      return SignupResponseModel(success: false, message: "서버와 연결할 수 없습니다.");
    } catch (e) {
      // 기타 예상치 못한 런타임 오류
      return SignupResponseModel(success: false, message: "시스템 오류가 발생했습니다.");
    }
  }

  @override
  Future<bool> executeDuplicate(String userId) async {
    final response = await _dataSource.duplicateCheck(userId);
    final data = response['data'];

    final available = data['available'];
    appLog("available: $available");
    return available;
  }

  @override
  Future<List<IndustryTypeModel>> getBusinessTypeList() async {
    final response = await _dataSource.getBusinessTypeList();
    final data = response['data'] as List;

    return data
        .map((e) => IndustryTypeModel(value: e['value'], label: e['label']))
        .toList();
  }

  @override
  Future<List<CategoryRequestModel>> getMainCategoryList() async {
    final response = await _dataSource.getMainCategoryList();
    final data = response['data'] as List;

    // JSON -> 모델 변환
    final categories = data.map((item) {
      return CategoryRequestModel(
        item['id'], // int -> String 변환
        item['name'] as String,
      );
    }).toList();

    return categories;
  }

  @override
  Future<List<CategoryRequestModel>> getSubCategoryList(int parentId) async {
    final response = await _dataSource.getSubCategoryList(parentId);
    final data = response['data'] as List;

    // JSON -> 모델 변환
    final categories = data.map((item) {
      return CategoryRequestModel(
        item['id'], // int -> String 변환
        item['name'] as String,
      );
    }).toList();

    return categories;
  }
}
