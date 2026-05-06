enum PdfType {
  privacyPolicy, // 개인정보처리방침
  buyerTerms, // 구매자약관
  serviceTerms, // 서비스 이용 약관
  commonTerms, // 공통약관
  sellerTerms, // 판매자약관
  settlementAgreement, // 정산 서비스 약정서
  electronicFinancialTerms, // 전자금융거래 약관
  shippingClaimsTerms, // 배송 및 클레임 약관
  requiredNotice, // 필수고지문

  purchaseTerms,
  consentCollectionPersonalInfo,
  personalInfoThirdParties,
}

enum PdfShowView { main, order }

extension PdfTypeExtension on PdfType {
  String get label {
    switch (this) {
      case PdfType.privacyPolicy:
        return "개인정보처리방침";
      case PdfType.buyerTerms:
        return "구매자약관";
      case PdfType.serviceTerms:
        return "서비스 이용 약관";
      case PdfType.commonTerms:
        return "공통약관";
      case PdfType.sellerTerms:
        return "판매자약관";
      case PdfType.settlementAgreement:
        return "정산 서비스 약정서";
      case PdfType.electronicFinancialTerms:
        return "전자금융거래 이용안내";
      case PdfType.shippingClaimsTerms:
        return "배송 및 클레임 약관";
      case PdfType.requiredNotice:
        return "필수고지문";
      case PdfType.purchaseTerms:
        return "구매조건 및 거래안내";
      case PdfType.consentCollectionPersonalInfo:
        return "개인정보 수집 및 이용 동의";
      case PdfType.personalInfoThirdParties:
        return "개인정보 제3자 제공 동의";
    }
  }

  String getPath(PdfShowView view) {
    switch (this) {
      case PdfType.privacyPolicy:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_privacy_policy.pdf";
          case PdfShowView.order:
            return "";
        }
      case PdfType.buyerTerms:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_buyer_terms.pdf";
          case PdfShowView.order:
            return "";
        }

      case PdfType.serviceTerms:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_terms_of_sevice.pdf";
          case PdfShowView.order:
            return "";
        }

      case PdfType.commonTerms:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_common_terms.pdf";
          case PdfShowView.order:
            return "";
        }

      case PdfType.sellerTerms:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_seller_terms.pdf";
          case PdfShowView.order:
            return "";
        }

      case PdfType.settlementAgreement:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_settlement_service_agreement.pdf";
          case PdfShowView.order:
            return "";
        }

      case PdfType.electronicFinancialTerms:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_electronic_financial_terms.pdf";
          case PdfShowView.order:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_order_electronic_financial_terms.pdf";
        }

      case PdfType.shippingClaimsTerms:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_shipping_claims_terms.pdf";
          case PdfShowView.order:
            return "";
        }

      case PdfType.requiredNotice:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_required_notice.pdf";
          case PdfShowView.order:
            return "";
        }

      case PdfType.purchaseTerms:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_purchase_terms.pdf";
          case PdfShowView.order:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_order_purchase_terms.pdf";
        }

      case PdfType.consentCollectionPersonalInfo:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_consent_collection_personal_info.pdf";
          case PdfShowView.order:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_order_consent_collection_personal_info.pdf";
        }

      case PdfType.personalInfoThirdParties:
        switch (view) {
          case PdfShowView.main:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_personal_info_third_parties.pdf";
          case PdfShowView.order:
            return "http://moding.iiiii.info:4566/moding-local/test/moding_order_personal_info_third_parties.pdf";
        }
    }
  }
}
