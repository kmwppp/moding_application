import 'package:moding_application/features/product/domain/entities/seller_info_dto.dart';

abstract class SellerInfoRepository {
  Future<SellerInfoDto> getSellerInfo(int sellerProfileId);
}
