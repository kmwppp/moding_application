import '../entities/signup_new_business_type_item.dart';
import '../entities/signup_new_category_item.dart';

abstract class SignupNewRepository {
  Future<bool> checkLoginIdAvailable(String loginId);

  Future<List<SignupNewBusinessTypeItem>> getBusinessTypeList();

  Future<List<SignupNewCategoryItem>> getMainCategoryList();

  Future<List<SignupNewCategoryItem>> getSubCategoryList(int parentId);
}
