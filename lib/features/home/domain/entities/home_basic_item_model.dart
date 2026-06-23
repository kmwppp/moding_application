class HomeBasicItemModel {
  final int id;
  final String name;
  final String thumbnailUrl;
  final int viewCount;
  final int reviewCount;
  final bool isHaccpCertified;
  final int? lowestPrice;
  final int? lowestDiscountAmount;
  final int? lowestDiscountRate;
  final int? lowestSellingPrice;

  HomeBasicItemModel({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.viewCount,
    required this.reviewCount,
    required this.isHaccpCertified,
    this.lowestPrice,
    this.lowestDiscountAmount,
    this.lowestDiscountRate,
    this.lowestSellingPrice,
  });

  HomeBasicItemModel copyWith({
    int? id,
    String? name,
    String? thumbnailUrl,
    int? viewCount,
    int? reviewCount,
    bool? isHaccpCertified,
    int? lowestPrice,
    int? lowestDiscountAmount,
    int? lowestDiscountRate,
    int? lowestSellingPrice,
  }) {
    return HomeBasicItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      viewCount: viewCount ?? this.viewCount,
      reviewCount: reviewCount ?? this.reviewCount,
      isHaccpCertified: isHaccpCertified ?? this.isHaccpCertified,
      lowestPrice: lowestPrice ?? this.lowestPrice,
      lowestDiscountAmount: lowestDiscountAmount ?? this.lowestDiscountAmount,
      lowestDiscountRate: lowestDiscountRate ?? this.lowestDiscountRate,
      lowestSellingPrice: lowestSellingPrice ?? this.lowestSellingPrice,
    );
  }

  factory HomeBasicItemModel.fromJson(Map<String, dynamic> json) {
    return HomeBasicItemModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      thumbnailUrl: json['thumbnailUrl'] ?? '',
      viewCount: json['viewCount'] ?? 0,
      reviewCount: json['reviewCount'] ?? 0,
      isHaccpCertified: json['isHaccpCertified'] ?? false,
      lowestPrice: json['lowestPrice'] as int?,
      lowestDiscountAmount: json['lowestDiscountAmount'] as int?,
      lowestDiscountRate: json['lowestDiscountRate'] as int?,
      lowestSellingPrice: json['lowestSellingPrice'] as int?,
    );
  }
}
