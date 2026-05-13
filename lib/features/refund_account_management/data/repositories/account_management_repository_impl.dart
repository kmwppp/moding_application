import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/refund_account_management/data/data_source/account_management_data_source.dart';
import 'package:moding_application/features/refund_account_management/domain/entities/refund_account_request_dto.dart';
import 'package:moding_application/features/refund_account_management/domain/entities/refund_account_response_dto.dart';
import 'package:moding_application/features/refund_account_management/domain/repositories/account_management_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_management_repository_impl.g.dart';

@riverpod
AccountManagementRepository accountManagementRepository(Ref ref) {
  final dataSource = ref.watch(accountManagementDataSourceProvider);
  return AccountManagementRepositoryImpl(dataSource);
}

class AccountManagementRepositoryImpl implements AccountManagementRepository {
  final AccountManagementDataSource _dataSource;

  AccountManagementRepositoryImpl(this._dataSource);

  @override
  Future<RefundAccountResponseWrapper> getRefundAccount() async {
    final response = await _dataSource.getRefundAccountInfo();
    return RefundAccountResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> putRefundAccountInfo(
    RefundAccountRequestDto request,
  ) async {
    try {
      final response = await _dataSource.putRefundAccountInfo(request);
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(success: false, message: '환불 계좌 변경에 실패했습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '환불 계좌 변경에 실패했습니다.');
    }
  }
}
