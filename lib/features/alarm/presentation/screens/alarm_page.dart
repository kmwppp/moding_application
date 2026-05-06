import 'package:flutter/material.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final List<_AlarmDummyItem> _orderDeliveryItems = const [
    _AlarmDummyItem(
      title: '주문이 접수되었습니다.',
      content: '고객님의 주문이 정상적으로 접수되어 상품 준비가 시작되었습니다.',
      date: '2026-04-27',
    ),
    _AlarmDummyItem(
      title: '배송이 시작되었습니다.',
      content: '주문하신 상품이 출고되어 현재 배송 중입니다.',
      date: '2026-04-26',
    ),
    _AlarmDummyItem(
      title: '배송이 완료되었습니다.',
      content: '상품이 고객님께 안전하게 전달되었습니다.',
      date: '2026-04-25',
    ),
  ];

  final List<_AlarmDummyItem> _notificationItems = const [
    _AlarmDummyItem(
      title: '정산 일정 안내',
      content: '이번 주 정산 일정과 처리 기준이 일부 변경되었습니다.',
      date: '2026-04-27',
    ),
    _AlarmDummyItem(
      title: '서비스 점검 안내',
      content: '안정적인 서비스 제공을 위해 새벽 시간대 점검이 예정되어 있습니다.',
      date: '2026-04-24',
    ),
    _AlarmDummyItem(
      title: '신규 기능 업데이트',
      content: '주문 관리 기능이 개선되어 더 빠르게 처리할 수 있습니다.',
      date: '2026-04-22',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const AppSliverAppbar(title: '알림'),
              SliverPersistentHeader(
                pinned: true,
                delegate: _AlarmTabBarDelegate(
                  TabBar(
                    controller: _tabController,
                    indicatorColor: AppColors.primary,
                    indicatorWeight: 2,
                    labelColor: AppColors.darkGrey,
                    unselectedLabelColor: AppColors.darkGrey,
                    labelStyle: context.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelStyle: context.body.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: const [
                      Tab(text: '주문·배송'),
                      Tab(text: '알림'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              _AlarmListView(items: _orderDeliveryItems),
              _AlarmListView(items: _notificationItems),
            ],
          ),
        ),
      ),
    );
  }
}

class _AlarmListView extends StatelessWidget {
  const _AlarmListView({required this.items});

  final List<_AlarmDummyItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: items.length,
      separatorBuilder: (context, index) =>
          Container(height: 1, color: AppColors.lightGrey),
      itemBuilder: (context, index) {
        final item = items[index];

        return Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: context.body.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                item.content,
                style: context.bodySmall.copyWith(
                  color: AppColors.darkGrey,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                item.date,
                style: context.caption.copyWith(color: AppColors.darkGrey),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AlarmTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _AlarmTabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(child: Center(child: tabBar)),
          Container(height: 1, color: AppColors.lightGrey),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _AlarmTabBarDelegate oldDelegate) {
    return oldDelegate.tabBar != tabBar;
  }
}

class _AlarmDummyItem {
  const _AlarmDummyItem({
    required this.title,
    required this.content,
    required this.date,
  });

  final String title;
  final String content;
  final String date;
}
