import 'package:freezed_annotation/freezed_annotation.dart';

part 'webview_tokens_response_dto.freezed.dart';
part 'webview_tokens_response_dto.g.dart';

@freezed
abstract class WebviewTokensResponseWrapper
    with _$WebviewTokensResponseWrapper {
  const factory WebviewTokensResponseWrapper({
    required WebviewTokensResponseDto data,
  }) = _WebviewTokensResponseWrapper;

  factory WebviewTokensResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$WebviewTokensResponseWrapperFromJson(json);
}

@freezed
abstract class WebviewTokensResponseDto with _$WebviewTokensResponseDto {
  const factory WebviewTokensResponseDto({required String token}) =
      _WebviewTokensResponseDto;

  factory WebviewTokensResponseDto.fromJson(Map<String, dynamic> json) =>
      _$WebviewTokensResponseDtoFromJson(json);
}
