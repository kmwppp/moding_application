import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/claim_check/data/data_source/claim_check_data_source.dart';
import 'package:moding_application/features/claim_check/domain/entities/claim_check_response_dto.dart';
import 'package:moding_application/features/claim_check/domain/repositories/claim_check_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'claim_check_repository_impl.g.dart';

@riverpod
ClaimCheckRepository claimCheckRepository(Ref ref) {
  final dataSource = ref.watch(claimCheckDataSourceProvider);
  return ClaimCheckRepositoryImpl(dataSource);
}

class ClaimCheckRepositoryImpl implements ClaimCheckRepository {
  final ClaimCheckDataSource _dataSource;

  ClaimCheckRepositoryImpl(this._dataSource);

  @override
  Future<ClaimCheckResponseWrapper> getClaimDetail(int claimId) async {
    final response = await _dataSource.getClaimCheckDetail(claimId);
    return ClaimCheckResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> patchClaimAppeal({
    required int claimId,
    required String appealReason,
  }) async {
    try {
      final response = await _dataSource.patchClaimAppeal(
        claimId: claimId,
        appealReason: appealReason,
      );
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response != null && e.response?.data != null) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(success: false, message: '서버와 연결할 수 없습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '시스템 오류가 발생했습니다.');
    }
  }
}
