enum MainTab { home, search, category, cart, profile }

extension MainTabX on MainTab {
  int get index {
    switch (this) {
      case MainTab.home:
        return 0;
      case MainTab.search:
        return 1;
      case MainTab.category:
        return 2;
      case MainTab.cart:
        return 3;
      case MainTab.profile:
        return 4;
    }
  }

  static MainTab fromIndex(int index) {
    switch (index) {
      case 0:
        return MainTab.home;
      case 1:
        return MainTab.search;
      case 2:
        return MainTab.category;
      case 3:
        return MainTab.cart;
      case 4:
        return MainTab.profile;
      default:
        return MainTab.home;
    }
  }
}
