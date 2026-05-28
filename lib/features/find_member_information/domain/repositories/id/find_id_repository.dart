import 'package:moding_application/features/find_member_information/domain/entities/id/find_id_response_dto.dart';

abstract class FindIdRepository {
  Future<FindIdResponseDto> postFindId(String identityVerificationKey);
}
