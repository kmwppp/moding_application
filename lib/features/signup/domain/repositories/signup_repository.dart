import 'package:moding_application/features/signup/domain/entities/category_request_model.dart';
import 'package:moding_application/features/signup/domain/entities/signup_response_model.dart';

import '../entities/business_type_model.dart';
import '../entities/signup_info.dart';

abstract class SignupRepository {
  Future<SignupResponseModel> executeSignUp(SignupInfo signUpInfo);

  Future<bool> executeDuplicate(String userId);

  Future<List<IndustryTypeModel>> getBusinessTypeList();

  Future<List<CategoryRequestModel>> getMainCategoryList();

  Future<List<CategoryRequestModel>> getSubCategoryList(int parentId);
}
