import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/change_account_information/data/data_source/change_account_information_data_source.dart';
import 'package:moding_application/features/change_account_information/domain/entities/account_info_response_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/change_account_information_repository.dart';

part 'change_account_information_repository_impl.g.dart';

@riverpod
ChangeAccountInformationRepository changeAccountInformationRepository(Ref ref) {
  final dataSource = ref.watch(changeAccountInformationDataSourceProvider);
  return ChangeAccountInformationRepositoryImpl(dataSource);
}

class ChangeAccountInformationRepositoryImpl
    implements ChangeAccountInformationRepository {
  final ChangeAccountInformationDataSource _dataSource;

  ChangeAccountInformationRepositoryImpl(this._dataSource);

  @override
  Future<AccountInfoResponseWrapper> getMyAccountInfo() async {
    final response = await _dataSource.getMyAccountInfo();
    return AccountInfoResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> patchMyAccountInfo({
    required String email,
    required String phone,
  }) async {
    try {
      final response = await _dataSource.patchMyAccountInfo(
        email: email,
        phone: phone,
      );
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(success: false, message: '계정 정보 변경에 실패했습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '계정 정보 변경에 실패했습니다.');
    }
  }
}
