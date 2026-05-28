enum FcmTargetPage {
  orderDetail('ORDER_DETAIL'),
  sellerOrderDetail('SELLER_ORDER_DETAIL'),
  claimDetail('CLAIM_DETAIL'),
  sellerClaimDetail('SELLER_CLAIM_DETAIL'),
  productDetail('PRODUCT_DETAIL'),
  sellerProductDetail('SELLER_PRODUCT_DETAIL'),
  sellerProductList('SELLER_PRODUCT_LIST'),
  sellerOrderList('SELLER_ORDER_LIST'),
  sellerHome('SELLER_HOME'),
  sellerTaxInvoice('SELLER_TAX_INVOICE'),
  sellerSettlement('SELLER_SETTLEMENT'),
  noticeList('NOTICE_LIST'),
  conversionStatus('CONVERSION_STATUS'),
  unknown('');

  const FcmTargetPage(this.code);

  final String code;

  static FcmTargetPage fromCode(String? code) {
    switch (code) {
      case 'ORDER_DETAIL':
        return FcmTargetPage.orderDetail;
      case 'SELLER_ORDER_DETAIL':
        return FcmTargetPage.sellerOrderDetail;
      case 'CLAIM_DETAIL':
        return FcmTargetPage.claimDetail;
      case 'SELLER_CLAIM_DETAIL':
        return FcmTargetPage.sellerClaimDetail;
      case 'PRODUCT_DETAIL':
        return FcmTargetPage.productDetail;
      case 'SELLER_PRODUCT_DETAIL':
        return FcmTargetPage.sellerProductDetail;
      case 'SELLER_PRODUCT_LIST':
        return FcmTargetPage.sellerProductList;
      case 'SELLER_ORDER_LIST':
        return FcmTargetPage.sellerOrderList;
      case 'SELLER_HOME':
        return FcmTargetPage.sellerHome;
      case 'SELLER_TAX_INVOICE':
        return FcmTargetPage.sellerTaxInvoice;
      case 'SELLER_SETTLEMENT':
        return FcmTargetPage.sellerSettlement;
      case 'NOTICE_LIST':
        return FcmTargetPage.noticeList;
      case 'CONVERSION_STATUS':
        return FcmTargetPage.conversionStatus;
      default:
        return FcmTargetPage.unknown;
    }
  }
}
