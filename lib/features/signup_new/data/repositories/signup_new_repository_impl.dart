import 'package:moding_application/features/signup_new/data/data_source/signup_new_data_source.dart';
import 'package:moding_application/features/signup_new/domain/entities/signup_new_business_type_item.dart';
import 'package:moding_application/features/signup_new/domain/entities/signup_new_category_item.dart';
import 'package:moding_application/features/signup_new/domain/repositories/signup_new_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_new_repository_impl.g.dart';

@riverpod
SignupNewRepository signupNewRepository(Ref ref) {
  return SignupNewRepositoryImpl(ref.watch(signupNewDataSourceProvider));
}

class SignupNewRepositoryImpl implements SignupNewRepository {
  final SignupNewDataSource _dataSource;

  SignupNewRepositoryImpl(this._dataSource);

  @override
  Future<bool> checkLoginIdAvailable(String loginId) async {
    final response = await _dataSource.duplicateCheck(loginId);
    final data = response['data'] as Map<String, dynamic>;
    return (data['available'] as bool?) ?? false;
  }

  @override
  Future<List<SignupNewBusinessTypeItem>> getBusinessTypeList() async {
    final response = await _dataSource.getBusinessTypeList();
    final data = response['data'] as List<dynamic>;

    return data
        .map(
          (item) => SignupNewBusinessTypeItem(
            value: item['value'] as String,
            label: item['label'] as String,
          ),
        )
        .toList();
  }

  @override
  Future<List<SignupNewCategoryItem>> getMainCategoryList() async {
    final response = await _dataSource.getMainCategoryList();
    final data = response['data'] as List<dynamic>;

    return data
        .map(
          (item) => SignupNewCategoryItem(
            id: item['id'] as int,
            name: item['name'] as String,
          ),
        )
        .toList();
  }

  @override
  Future<List<SignupNewCategoryItem>> getSubCategoryList(int parentId) async {
    final response = await _dataSource.getSubCategoryList(parentId);
    final data = response['data'] as List<dynamic>;

    return data
        .map(
          (item) => SignupNewCategoryItem(
            id: item['id'] as int,
            name: item['name'] as String,
          ),
        )
        .toList();
  }
}
