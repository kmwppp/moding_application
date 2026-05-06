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
