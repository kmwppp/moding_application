import 'package:moding_application/features/seller_web/presentation/seller_web_page_params.dart';

typedef SellerWebCommandDispatcher =
    Future<void> Function(SellerWebPageParams params);

class SellerWebBridgeService {
  SellerWebBridgeService._();

  static final SellerWebBridgeService instance = SellerWebBridgeService._();

  SellerWebCommandDispatcher? _dispatcher;

  bool get hasActiveWebView => _dispatcher != null;

  void registerDispatcher(SellerWebCommandDispatcher dispatcher) {
    _dispatcher = dispatcher;
  }

  void unregisterDispatcher(SellerWebCommandDispatcher dispatcher) {
    if (_dispatcher == dispatcher) {
      _dispatcher = null;
    }
  }

  Future<bool> dispatchIfAttached(SellerWebPageParams params) async {
    final dispatcher = _dispatcher;
    if (dispatcher == null) {
      return false;
    }

    await dispatcher(params);
    return true;
  }
}
