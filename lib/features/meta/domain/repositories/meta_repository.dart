import 'package:moding_application/features/meta/domain/entities/meta_option_dto.dart';

abstract class MetaRepository {
  Future<List<MetaOptionDto>> getBankCodes();
}
