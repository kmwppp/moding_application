class BasicItemModel {
  final String title;
  final String imageUrl;
  final String content;

  BasicItemModel({
    required this.title,
    required this.imageUrl,
    required this.content,
  });

  BasicItemModel copyWith({String? title, String? imageUrl, String? content}) {
    return BasicItemModel(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      content: content ?? this.content,
    );
  }
}
