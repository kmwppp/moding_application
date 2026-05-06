import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/order/data/data_source/order_data_source.dart';
import 'package:moding_application/features/order/domain/entities/address_dto.dart';
import 'package:moding_application/features/order/domain/entities/create_order_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/order_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/order_response_dto.dart';
import 'package:moding_application/features/order/domain/repositories/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/address_request_dto.dart';

part 'order_repository_impl.g.dart';

@riverpod
OrderRepository orderRepository(Ref ref) {
  final dataSource = ref.watch(orderDataSourceProvider);
  return OrderRepositoryImpl(dataSource);
}

class OrderRepositoryImpl implements OrderRepository {
  final OrderDataSource _dataSource;

  OrderRepositoryImpl(this._dataSource);

  @override
  Future<OrderResponseDto> getOrderInfo(OrderRequestDto requestDto) async {
    final response = await _dataSource.getOrderInfo(requestDto);
    final data = response['data'];
    return OrderResponseDto.fromJson(data);
  }

  @override
  Future<AddressListResponse> getAddressList() async {
    final response = await _dataSource.getAddressList();
    return AddressListResponse.fromJson(response);
  }

  @override
  Future<ResponseModel> deleteAddress(int addressId) async {
    final response = await _dataSource.addressControl(
      addressId: addressId,
      control: AddressControl.delete,
      request: null,
    );
    return ResponseModel.fromJson(response);
  }

  @override
  Future<AddressDto> getAddressDetail(int addressId) async {
    final response = await _dataSource.addressControl(
      addressId: addressId,
      control: AddressControl.get,
      request: null,
    );
    final data = response['data'];
    return AddressDto.fromJson(data);
  }

  @override
  Future<ResponseModel> putAddress(
    int addressId,
    AddressRequestDto request,
  ) async {
    final response = await _dataSource.addressControl(
      addressId: addressId,
      control: AddressControl.put,
      request: request,
    );
    return ResponseModel.fromJson(response);
  }

  @override
  Future<ResponseModel> postAddress(AddressRequestDto request) async {
    final response = await _dataSource.postAddAddress(request: request);
    return ResponseModel.fromJson(response);
  }

  @override
  Future<CreateOrderResponseWrapper> postCreateOrder(
    CreateOrderRequestDto request,
  ) async {
    final response = await _dataSource.createPostOrder(
      createOrderRequestDto: request,
    );
    return CreateOrderResponseWrapper.fromJson(response);
  }
}
