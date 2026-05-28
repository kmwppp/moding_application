import 'package:moding_application/features/fcm/domain/enums/fcm_target_page.dart';

class AlarmListResponseWrapper {
  const AlarmListResponseWrapper({required this.data});

  final AlarmListData data;

  factory AlarmListResponseWrapper.fromJson(Map<String, dynamic> json) {
    return AlarmListResponseWrapper(
      data: AlarmListData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }
}

class AlarmListData {
  const AlarmListData({
    required this.content,
    required this.number,
    required this.size,
    required this.totalElements,
    required this.totalPages,
  });

  final List<AlarmItemDto> content;
  final int number;
  final int size;
  final int totalElements;
  final int totalPages;

  factory AlarmListData.fromJson(Map<String, dynamic> json) {
    return AlarmListData(
      content: (json['content'] as List<dynamic>? ?? [])
          .map((e) => AlarmItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: (json['number'] as num?)?.toInt() ?? 0,
      size: (json['size'] as num?)?.toInt() ?? 0,
      totalElements: (json['totalElements'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
    );
  }
}

class AlarmItemDto {
  const AlarmItemDto({
    required this.id,
    required this.category,
    required this.label,
    required this.title,
    required this.body,
    required this.page,
    required this.referenceId,
    required this.sentAt,
    required this.isRead,
  });

  final int id;
  final String category;
  final String label;
  final String title;
  final String body;
  final FcmTargetPage page;
  final int? referenceId;
  final DateTime sentAt;
  final bool isRead;

  factory AlarmItemDto.fromJson(Map<String, dynamic> json) {
    return AlarmItemDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      category: json['category'] as String? ?? '',
      label: json['label'] as String? ?? '',
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      page: FcmTargetPage.fromCode(json['page'] as String?),
      referenceId: (json['referenceId'] as num?)?.toInt(),
      sentAt: _parseLocalDateTime(json['sentAt']),
      isRead: json['isRead'] as bool? ?? false,
    );
  }
}

DateTime _parseLocalDateTime(dynamic value) {
  if (value is! String || value.trim().isEmpty) {
    return DateTime.now();
  }

  return DateTime.parse(value).toLocal();
}
