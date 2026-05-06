import 'package:moding_application/features/home/data/repositories/home_repository_impl.dart';
import 'package:moding_application/features/home/presentation/providers/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/home_section_model.dart';

part 'home_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class HomeViewModel extends _$HomeViewModel {
  @override
  FutureOr<HomeState> build() async {
    final repository = ref.read(homeRepositoryProvider);

    // 1. 섹션 리스트 먼저 호출
    final sections = await repository.getHomeSectionList();

    // 2. 각 섹션별 상품 리스트를 가져오는 Future들을 리스트로 생성
    final productFutures = sections
        .map((section) => repository.getHomeProductList(section.id))
        .toList();

    // 3. 병렬 처리 실행
    final productsPerSection = await Future.wait(productFutures);

    // 4. 기존 sections 리스트를 순회하며 productList가 채워진 새 모델 리스트 생성
    final updatedSections = List<HomeSectionModel>.generate(
      sections.length,
      (i) => sections[i].copyWith(productList: productsPerSection[i]),
    );

    // 5. 최종 상태 반환
    return HomeState.initial().copyWith(sectionList: updatedSections);
  }
}
