import 'package:freezed_annotation/freezed_annotation.dart';

class LocalDateTimeConverter implements JsonConverter<DateTime, String> {
  const LocalDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();

  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();
}

class NullableLocalDateTimeConverter
    implements JsonConverter<DateTime?, String?> {
  const NullableLocalDateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return DateTime.parse(json).toLocal();
  }

  @override
  String? toJson(DateTime? object) => object?.toUtc().toIso8601String();
}
