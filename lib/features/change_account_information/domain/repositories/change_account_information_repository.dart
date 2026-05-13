import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/change_account_information/domain/entities/account_info_response_dto.dart';

abstract class ChangeAccountInformationRepository {
  Future<AccountInfoResponseWrapper> getMyAccountInfo();

  Future<ResponseModel> patchMyAccountInfo({
    required String email,
    required String phone,
  });
}
