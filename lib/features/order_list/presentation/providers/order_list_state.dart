import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/order_list/domain/entities/date_list_response_dto.dart';
import 'package:moding_application/features/order_list/domain/enums/order_list_search_type.dart';

part 'order_list_state.freezed.dart';

@freezed
abstract class OrderListState with _$OrderListState {
  const OrderListState._();

  const factory OrderListState({
    required OrderListSearchType searchType,
    required DateListResponseWrapper? dateListWrapper,
  }) = _OrderListState;

  factory OrderListState.initial() => OrderListState(
    searchType: OrderListSearchType.ALL,
    dateListWrapper: null,
  );
}
