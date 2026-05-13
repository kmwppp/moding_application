import 'package:moding_application/features/home/data/data_source/home_data_source.dart';
import 'package:moding_application/features/home/domain/entities/home_basic_item_model.dart';
import 'package:moding_application/features/home/domain/entities/home_section_model.dart';
import 'package:moding_application/features/home/domain/repositories/home_repository.dart';
import 'package:moding_application/features/terms/domain/entities/terms_item_dto.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository_impl.g.dart';

@riverpod
HomeRepository homeRepository(Ref ref) {
  final dataSource = ref.watch(homeDataSourceProvider);
  return HomeRepositoryImpl(dataSource);
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);

  @override
  Future<List<HomeSectionModel>> getHomeSectionList() async {
    appLog("🚀 getHomeSectionList 함수 시작됨"); // 함수 진입 확인
    try {
      final response = await _dataSource.getHomeSectionList();
      final List<dynamic> data = response['data'] ?? [];

      appLog("데이터 로드 성공: ${data.length}개");

      return data.map((e) => HomeSectionModel.fromJson(e)).toList();
    } catch (e) {
      appLog("레포지토리 에러 발생: $e");
      rethrow;
    }
  }

  @override
  Future<List<HomeBasicItemModel>> getHomeProductList(int sectionId) async {
    try {
      final response = await _dataSource.getHomeProductList(sectionId);
      final List<dynamic> data = response['data'] ?? [];

      appLog("데이터 로드 성공: ${data.length}개");

      return data.map((e) => HomeBasicItemModel.fromJson(e)).toList();
    } catch (e) {
      appLog("레포지토리 에러 발생: $e");
      rethrow;
    }
  }

  @override
  Future<TermsDto> getTerms() async {
    final response = await _dataSource.getTerms();
    return TermsDto.fromJson({'data': response['data']});
  }
}
