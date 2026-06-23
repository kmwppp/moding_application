enum AppVersionPlatform {
  ios('IOS', 'ios'),
  android('ANDROID', 'android');

  const AppVersionPlatform(this.serverValue, this.apiValue);

  final String serverValue;
  final String apiValue;

  static AppVersionPlatform fromServerValue(String? value) {
    switch (value?.toUpperCase()) {
      case 'IOS':
        return AppVersionPlatform.ios;
      case 'ANDROID':
        return AppVersionPlatform.android;
      default:
        return AppVersionPlatform.android;
    }
  }
}
