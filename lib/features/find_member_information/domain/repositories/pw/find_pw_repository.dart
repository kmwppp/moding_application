import 'package:moding_application/features/find_member_information/domain/entities/pw/find_pw_response_dto.dart';

abstract class FindPwRepository {
  Future<FindPwResponseDto> patchFindPassword({
    required String loginId,
    required String identityVerificationKey,
    required String newPassword,
  });
}
