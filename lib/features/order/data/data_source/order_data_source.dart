import 'package:dio/dio.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/features/order/domain/entities/address_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/create_order_request_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/order_request_dto.dart';

part 'order_data_source.g.dart';

@riverpod
OrderDataSource orderDataSource(Ref ref) {
  return OrderDataSource(ref.watch(dioProvider));
}

class OrderDataSource {
  final Dio _dio;

  OrderDataSource(this._dio);

  Future<Map<String, dynamic>> getOrderInfo(OrderRequestDto request) async {
    final response = await _dio.post(
      AppHttpUrl.getOrderInfo(),
      data: request.toJson(),
    );

    return response.data;
  }

  /// 배송지 리스트 호출
  Future<Map<String, dynamic>> getAddressList() async {
    final response = await _dio.get(AppHttpUrl.getAddressList());
    return response.data;
  }

  /// 배송지 총 관리
  Future<Map<String, dynamic>> addressControl({
    required int addressId,
    required AddressControl control,
    required AddressRequestDto? request,
  }) async {
    final Response<dynamic> response;
    switch (control) {
      case AddressControl.get:

        /// 배송지 상세 조회
        response = await _dio.get(
          AppHttpUrl.getAddressDetailControl(addressId),
        );
      case AddressControl.put:

        /// 배송지 수정
        response = await _dio.put(
          AppHttpUrl.getAddressDetailControl(addressId),
          data: AddressRequestDto(
            name: request!.name ?? "",
            address: request.address ?? "",
            addressDetail: request.addressDetail ?? "",
            phone: request.phone ?? "",
            isDefault: request.isDefault,
            recipientName: request.recipientName,
            zipCode: request.zipCode,
          ).toJson(),
        );
      case AddressControl.delete:

        /// 배송지 삭제
        response = await _dio.delete(
          AppHttpUrl.getAddressDetailControl(addressId),
        );
    }

    return response.data;
  }

  /// 배송지 등록
  Future<Map<String, dynamic>> postAddAddress({
    required AddressRequestDto? request,
  }) async {
    final response = await _dio.post(
      AppHttpUrl.postAddAddress(),
      data: AddressRequestDto(
        name: request!.name ?? "",
        address: request.address ?? "",
        addressDetail: request.addressDetail ?? "",
        phone: request.phone ?? "",
        isDefault: request.isDefault,
        recipientName: request.recipientName,
        zipCode: request.zipCode,
      ).toJson(),
    );

    return response.data;
  }

  Future<Map<String, dynamic>> createPostOrder({
    required CreateOrderRequestDto createOrderRequestDto,
  }) async {
    final response = await _dio.post(
      AppHttpUrl.postCreateOrder,
      data: createOrderRequestDto.toJson(),
    );

    return response.data;
  }
}

enum AddressControl { get, put, delete }
