import 'dart:async';

import 'package:moding_application/features/home/data/repositories/home_repository_impl.dart';
import 'package:moding_application/features/home/domain/entities/home_basic_item_model.dart';
import 'package:moding_application/features/home/domain/repositories/home_repository.dart';
import 'package:moding_application/features/home/presentation/providers/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/home_section_model.dart';

part 'home_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class HomeViewModel extends _$HomeViewModel {
  static const _sectionBatchSize = 2;

  @override
  FutureOr<HomeState> build() async {
    final repository = ref.read(homeRepositoryProvider);

    final sections = await repository.getHomeSectionList();
    final initialSections = sections
        .map((section) => section.copyWith(productList: const []))
        .toList();

    unawaited(_loadSectionProducts(initialSections, repository));

    return HomeState.initial().copyWith(sectionList: initialSections);
  }

  Future<void> _loadSectionProducts(
    List<HomeSectionModel> sections,
    HomeRepository repository,
  ) async {
    for (var start = 0; start < sections.length; start += _sectionBatchSize) {
      final end = (start + _sectionBatchSize > sections.length)
          ? sections.length
          : start + _sectionBatchSize;
      final batch = sections.sublist(start, end);

      final results = await Future.wait(
        batch.map((section) async {
          try {
            final products = await repository.getHomeProductList(section.id);
            return MapEntry<int, List<HomeBasicItemModel>>(section.id, products);
          } catch (_) {
            return const MapEntry<int, List<HomeBasicItemModel>>(0, []);
          }
        }),
      );

      if (!ref.mounted) return;

      final currentState = state.asData?.value;
      if (currentState == null) return;

      final productMap = <int, List<HomeBasicItemModel>>{
        for (final result in results)
          if (result.key != 0) result.key: result.value,
      };

      final updatedSections = currentState.sectionList
          .map(
            (section) => productMap.containsKey(section.id)
                ? section.copyWith(productList: productMap[section.id]!)
                : section,
          )
          .toList();

      state = AsyncData(currentState.copyWith(sectionList: updatedSections));
    }
  }
}
