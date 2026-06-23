import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TermsType {
  service,
  privacyPolicy,
  common,
  buyer,
  seller,
  electronicFinancial,
  purchase,
  shippingClaims,
  requiredNotice,
  settlementServiceAgreement,
  consentCollectionPersonalInfo,
  personalInfoThirdParties,
  orderPurchase,
  orderElectronicFinancial,
  orderConsentCollectionPersonalInfo,
  orderPersonalInfoThirdParties,
}

extension TermsTypeLabelX on TermsType {
  String get label {
    switch (this) {
      case TermsType.service:
        return '서비스 이용약관';
      case TermsType.privacyPolicy:
        return '개인정보처리방침';
      case TermsType.common:
        return '공통 약관';
      case TermsType.buyer:
        return '구매회원 약관';
      case TermsType.seller:
        return '판매회원 약관';
      case TermsType.electronicFinancial:
        return '전자금융거래 이용약관';
      case TermsType.purchase:
        return '구매 약관';
      case TermsType.shippingClaims:
        return '배송·클레임 정책';
      case TermsType.requiredNotice:
        return '필수 고지사항';
      case TermsType.settlementServiceAgreement:
        return '정산 서비스 이용약관';
      case TermsType.consentCollectionPersonalInfo:
        return '개인정보 수집 및 이용 동의';
      case TermsType.personalInfoThirdParties:
        return '개인정보 제3자 제공 동의';
      case TermsType.orderPurchase:
        return '주문 구매 약관';
      case TermsType.orderElectronicFinancial:
        return '주문 전자금융거래 이용약관';
      case TermsType.orderConsentCollectionPersonalInfo:
        return '주문 개인정보 수집 및 이용 동의';
      case TermsType.orderPersonalInfoThirdParties:
        return '주문 개인정보 제3자 제공 동의';
    }
  }
}
