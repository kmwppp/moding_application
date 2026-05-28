import 'package:moding_application/core/network/entities/tax_invoice_url_response_dto.dart';
import 'package:moding_application/features/order_check/domain/entities/order_detail_dto.dart';
import 'package:moding_application/features/order_check/domain/entities/order_delivery_tracking_dto.dart';

abstract class OrderCheckRepository {
  Future<OrderDetailWrapper> getOrderDetail(int orderId);
  Future<OrderDeliveryTrackingWrapper> getOrderDeliveryDetail(int orderId);
  Future<TaxInvoiceUrlResponseWrapper> getOrderTaxInvoiceUrl(int orderId);
}
