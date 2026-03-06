import 'package:flutter/material.dart';
import 'package:moding_application/core/presentation/widgets/card_item.dart';
import 'package:moding_application/features/home/presentation/screens/widgets/home_appbar.dart';

class HomePageMain extends StatelessWidget {
  const HomePageMain({super.key});

  @override
  Widget build(BuildContext context) {
    const String logoPath = "assets/images/logo.png";
    double cardWidth = (MediaQuery.of(context).size.width / 2) - 70;
    return Scaffold(
      appBar: HomeAppbar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildSearchBar()),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardItem(
                        imageUrl: logoPath,
                        title: '최근 본 식자재',
                        contents: '모딩에서 파는 빵식이',
                        isMain: true,
                      ),
                      CardItem(
                        imageUrl: logoPath,
                        title: '최근 본 식자재',
                        contents: '모딩에서 파는 김치찌개',
                        isMain: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 서치바 위젯 분리
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20), // 조금 더 현대적인 둥근 수치
        ),
        child: const TextField(
          textAlignVertical: TextAlignVertical.center, // 텍스트 수직 중앙 정렬
          decoration: InputDecoration(
            hintText: "검색어를 입력하세요",
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
            prefixIcon: Icon(Icons.search, size: 22, color: Colors.grey),
            border: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
          ),
        ),
      ),
    );
  }
}
