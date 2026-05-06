import '../../domain/entities/terms_item_dto.dart';

abstract class TermsRepository {
  Future<TermsDto> getTerms();
}
