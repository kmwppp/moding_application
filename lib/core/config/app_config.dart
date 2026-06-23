class AppConfig {
  static const String env = String.fromEnvironment(
    'APP_ENV',
    defaultValue: 'test',
  );

  static const String _apiBaseUrlOverride = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: '',
  );
  static const String _sellerWebUrlOverride = String.fromEnvironment(
    'SELLER_WEB_URL',
    defaultValue: '',
  );
  static const String _paymentWebUrlOverride = String.fromEnvironment(
    'PAYMENT_WEB_URL',
    defaultValue: '',
  );
  static const String _staticFileBaseUrlOverride = String.fromEnvironment(
    'STATIC_FILE_BASE_URL',
    defaultValue: '',
  );

  static bool get isProd => env == 'prod';

  static bool get isTest => env == 'test';

  static String get apiBaseUrl {
    if (_apiBaseUrlOverride.isNotEmpty) return _apiBaseUrlOverride;
    return _defaultApiBaseUrl;
  }

  static String get sellerWebUrl {
    if (_sellerWebUrlOverride.isNotEmpty) return _sellerWebUrlOverride;
    return _defaultSellerWebUrl;
  }

  static String get paymentWebUrl {
    if (_paymentWebUrlOverride.isNotEmpty) return _paymentWebUrlOverride;
    return _defaultPaymentWebUrl;
  }

  static String get staticFileBaseUrl {
    if (_staticFileBaseUrlOverride.isNotEmpty) {
      return _staticFileBaseUrlOverride;
    }
    return _defaultStaticFileBaseUrl;
  }

  static String get apiHost => Uri.parse(apiBaseUrl).host;

  static String get _defaultApiBaseUrl {
    switch (env) {
      case 'prod':
        return 'http://moding.iiiii.info:8080';
      case 'test':
      default:
        return 'http://moding.iiiii.info:8080';
    }
  }

  static String get _defaultSellerWebUrl {
    switch (env) {
      case 'prod':
        return 'http://moding.iiiii.info:8000';
      case 'test':
      default:
        return 'http://moding.iiiii.info:8000';
    }
  }

  static String get _defaultPaymentWebUrl {
    switch (env) {
      case 'prod':
        return 'http://moding.iiiii.info:8001/pg.html';
      case 'test':
      default:
        return 'http://moding.iiiii.info:8001/pg.html';
    }
  }

  static String get _defaultStaticFileBaseUrl {
    switch (env) {
      case 'prod':
        return 'http://moding.iiiii.info:4566/moding-local/test';
      case 'test':
      default:
        return 'http://moding.iiiii.info:4566/moding-local/test';
    }
  }
}
