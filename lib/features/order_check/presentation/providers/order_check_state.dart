import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/order_check/domain/entities/order_detail_dto.dart';

part 'order_check_state.freezed.dart';

@freezed
abstract class OrderCheckState with _$OrderCheckState {
  const OrderCheckState._();

  const factory OrderCheckState({
    required bool isLoading,
    OrderDetailWrapper? orderDetail,
  }) = _OrderCheckState;

  factory OrderCheckState.initial() =>
      OrderCheckState(isLoading: true, orderDetail: null);
}
