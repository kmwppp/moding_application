class HomeBasicItemModel {
  final int id;
  final String name;
  final String thumbnailUrl;
  final int viewCount;
  final int reviewCount;

  HomeBasicItemModel({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.viewCount,
    required this.reviewCount,
  });

  HomeBasicItemModel copyWith({
    int? id,
    String? name,
    String? thumbnailUrl,
    int? viewCount,
    int? reviewCount,
  }) {
    return HomeBasicItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      viewCount: viewCount ?? this.viewCount,
      reviewCount: reviewCount ?? this.reviewCount,
    );
  }

  factory HomeBasicItemModel.fromJson(Map<String, dynamic> json) {
    return HomeBasicItemModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      thumbnailUrl: json['thumbnailUrl'] ?? '',
      viewCount: json['viewCount'] ?? 0,
      reviewCount: json['reviewCount'] ?? 0,
    );
  }
}
