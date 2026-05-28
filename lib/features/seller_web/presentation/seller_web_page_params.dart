class SellerWebPageParams {
  const SellerWebPageParams({
    required this.webViewToken,
    this.targetPath,
    this.mainMenu,
  });

  final String webViewToken;
  final String? targetPath;
  final String? mainMenu;
}
