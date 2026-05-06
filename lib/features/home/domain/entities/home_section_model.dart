import 'package:moding_application/features/home/domain/entities/home_basic_item_model.dart';
import 'package:moding_application/features/home/domain/enums/section_type.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';

class HomeSectionModel {
  final int id;
  final String title;
  final ProductRecommendType type;
  final LayoutType layout;
  final int displayOrder;
  final int productLimit;
  final bool active;
  final List<HomeBasicItemModel> productList;

  HomeSectionModel({
    required this.id,
    required this.title,
    required this.type,
    required this.layout,
    required this.displayOrder,
    required this.productLimit,
    required this.active,
    required this.productList,
  });

  HomeSectionModel copyWith({List<HomeBasicItemModel>? productList}) {
    return HomeSectionModel(
      id: id,
      title: title,
      type: type,
      displayOrder: displayOrder,
      productLimit: productLimit,
      active: active,
      productList: productList ?? this.productList,
      layout: layout,
    );
  }

  factory HomeSectionModel.fromJson(Map<String, dynamic> json) {
    return HomeSectionModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      // String을 SectionType으로 변환
      type: ProductRecommendTypeX.fromString(json['type']),
      // String을 LayoutType으로 변환
      layout: _parseLayoutType(json['layout']),
      displayOrder: json['displayOrder'] ?? 0,
      productLimit: json['productLimit'] ?? 0,
      active: json['isActive'] ?? false,
      // JSON 키가 'isActive'인 점 확인!
      productList: [],
    );
  }

  static LayoutType _parseLayoutType(String? layoutStr) {
    return LayoutType.values.firstWhere(
      (e) => e.name == layoutStr || e.toString().split('.').last == layoutStr,
      orElse: () => LayoutType.WIDE_CARD, // 기본값
    );
  }
}
