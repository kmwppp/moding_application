import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/home/domain/entities/home_section_model.dart';
import 'package:moding_application/features/terms/domain/entities/terms_item_dto.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required List<HomeSectionModel> sectionList,
    required TermsDto? termsDto,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(sectionList: [], termsDto: null);
}
