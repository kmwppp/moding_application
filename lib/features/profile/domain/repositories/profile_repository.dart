import 'package:moding_application/features/profile/domain/entities/profile_summary_dto.dart';
import 'package:moding_application/features/profile/domain/entities/webview_tokens_response_dto.dart';

abstract class ProfileRepository {
  Future<ProfileSummaryWrapper> getProfileSummary();

  Future<WebviewTokensResponseWrapper> postWebViewTokens();
}
