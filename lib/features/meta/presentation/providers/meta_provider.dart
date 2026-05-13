import 'package:moding_application/features/meta/data/repositories/meta_repository_impl.dart';
import 'package:moding_application/features/meta/domain/entities/meta_option_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meta_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<MetaOptionDto>> bankCodes(Ref ref) async {
  final repository = ref.watch(metaRepositoryProvider);
  return repository.getBankCodes();
}
