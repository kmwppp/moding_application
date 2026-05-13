import 'package:moding_application/features/terms/data/repositories/terms_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/terms_item_dto.dart';
import '../../domain/enums/terms_type.dart';

part 'terms_provider.g.dart';

@Riverpod(keepAlive: true)
class TermsNotifier extends _$TermsNotifier {
  @override
  Future<TermsDto> build() async {
    final repository = ref.read(termsRepositoryProvider);
    return repository.getTerms();
  }

  /// 전체
  List<TermsItemDto> get all => state.value?.data ?? [];

  /// 타입 필터
  List<TermsItemDto> getByTypes(List<TermsType> types) {
    return all.where((e) => types.contains(e.type)).toList();
  }

  /// 푸터용
  List<TermsItemDto> get footerTerms =>
      getByTypes([TermsType.service, TermsType.privacyPolicy]);

  List<TermsItemDto> get orderTerms =>
      getByTypes([TermsType.service, TermsType.privacyPolicy]);

  /// 회원가입용
  List<TermsItemDto> get signupTerms => getByTypes([TermsType.buyer]);
}
