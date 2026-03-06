import 'package:flutter/material.dart';
import 'package:moding_application/features/home/presentation/screens/home_page_main.dart';
import 'package:moding_application/features/order/order_page_main.dart';
import 'package:moding_application/features/search/presentation/screens/search_page_main.dart';

import '../profile/presentation/screens/profile_page_main.dart';
import 'models/navigation_item_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 바디 페이지 변수
  int _currentIndex = 0;

  // 바디 인덱스 별 각 메인 페이지
  final List<Widget> _pages = [
    HomePageMain(),
    SearchPageMain(),
    OrderPageMain(),
    ProfilePageMain(),
    // LoginPageMain(),
  ];

  // 하단 네비게이션 아이템 데이터를 리스트로 관리
  final List<NavigationItemModel> _navItems = const [
    NavigationItemModel(
      activeImageUrl: "homeIcon.png",
      inActiveImageUrl: "homeIconGray.png",
    ),
    NavigationItemModel(
      activeImageUrl: "searchIcon.png",
      inActiveImageUrl: "searchIconGray.png",
    ),
    NavigationItemModel(
      activeImageUrl: "favoriteIcon.png",
      inActiveImageUrl: "favoriteIconGray.png",
    ),
    NavigationItemModel(
      activeImageUrl: "myIcon.png",
      inActiveImageUrl: "myIconGray.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: _pages),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // 텍스트 영역이 차지하는 최소한의 높이도 제거
          selectedFontSize: 0,
          unselectedFontSize: 0,
          // 3. map을 사용하여 코드 중복 제거
          items: _navItems.map((item) => _buildBottomItem(item)).toList(),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomItem(NavigationItemModel item) {
    // 팁: 경로 반복을 줄이기 위해 앞에 공통 경로를 붙여줌
    const String basePath = "assets/images/icons/";

    return BottomNavigationBarItem(
      icon: Image.asset(
        "$basePath${item.inActiveImageUrl}",
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        "$basePath${item.activeImageUrl}",
        width: 24,
        height: 24,
      ),
      label: '',
    );
  }
}
