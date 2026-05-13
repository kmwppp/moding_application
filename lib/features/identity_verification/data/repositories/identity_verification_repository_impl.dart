import 'package:moding_application/features/identity_verification/data/data_source/identity_verification_data_source.dart';
import 'package:moding_application/features/identity_verification/domain/entities/reauth_response_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/identity_verification_repository.dart';

part 'identity_verification_repository_impl.g.dart';

@riverpod
IdentityVerificationRepository identityVerificationRepository(Ref ref) {
  final dataSource = ref.watch(identityVerificationDataSourceProvider);
  return IdentityVerificationRepositoryImpl(dataSource);
}

class IdentityVerificationRepositoryImpl
    implements IdentityVerificationRepository {
  final IdentityVerificationDataSource _dataSource;

  IdentityVerificationRepositoryImpl(this._dataSource);

  @override
  Future<ReauthResponseWrapper> postReAuth(String password) async {
    final response = await _dataSource.postReAuth(password);
    return ReauthResponseWrapper.fromJson(response);
  }
}
