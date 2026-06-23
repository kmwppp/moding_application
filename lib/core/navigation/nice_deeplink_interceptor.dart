import 'package:flutter/widgets.dart';

/// GoRouter가 moding://auth/nice 딥링크를 처리하기 전에 가로채어
/// 네비게이션 스택이 교체되는 것을 방지합니다.
/// 결과는 app_links 스트림을 통해 niceCallbackResultProvider로 전달됩니다.
class NiceDeeplinkInterceptor extends WidgetsBindingObserver {
  static bool _isInicisResultPath(String path) =>
      path == '/result' ||
      path.startsWith('/result?') ||
      path == '/payment/result' ||
      path.startsWith('/payment/result?');

  static bool _isNicePath(String path) =>
      path == '/auth/nice' ||
      path.startsWith('/auth/nice?') ||
      path == '/nice' ||
      path.startsWith('/nice?');

  @override
  Future<bool> didPushRoute(String route) async {
    if (_isNicePath(route) || _isInicisResultPath(route)) {
      return true; // GoRouter에 전달하지 않음
    }
    return false;
  }

  @override
  Future<bool> didPushRouteInformation(
    RouteInformation routeInformation,
  ) async {
    if (_isNicePath(routeInformation.uri.path) ||
        _isInicisResultPath(routeInformation.uri.path)) {
      return true;
    }
    return false;
  }
}
