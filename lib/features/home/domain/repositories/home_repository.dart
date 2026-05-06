import 'package:moding_application/features/home/domain/entities/home_basic_item_model.dart';
import 'package:moding_application/features/home/domain/entities/home_section_model.dart';
import 'package:moding_application/features/terms/domain/entities/terms_item_dto.dart';

abstract class HomeRepository {
  Future<List<HomeSectionModel>> getHomeSectionList();

  Future<List<HomeBasicItemModel>> getHomeProductList(int sectionId);

  Future<TermsDto> getTerms();
}
