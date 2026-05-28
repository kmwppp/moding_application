import 'package:moding_application/features/nice_identity_verification/data/data_source/nice_identity_verification_data_source.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_response_dto.dart';
import 'package:moding_application/features/nice_identity_verification/domain/repositories/nice_identity_verification_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nice_identity_verification_repository_impl.g.dart';

@riverpod
NiceIdentityVerificationRepository niceIdentityVerificationRepository(Ref ref) {
  final dataSource = ref.watch(niceIdentityVerificationDataSourceProvider);
  return NiceIdentityVerificationRepositoryImpl(dataSource);
}

class NiceIdentityVerificationRepositoryImpl
    implements NiceIdentityVerificationRepository {
  NiceIdentityVerificationRepositoryImpl(this._dataSource);

  final NiceIdentityVerificationDataSource _dataSource;

  @override
  Future<NiceIdentityVerificationResponseDto> postIdentityVerification({
    required String purpose,
  }) async {
    final response = await _dataSource.postIdentityVerification(
      purpose: purpose,
    );
    return NiceIdentityVerificationResponseDto.fromJson(response);
  }
}
