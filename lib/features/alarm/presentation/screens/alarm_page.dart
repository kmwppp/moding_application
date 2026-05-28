import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/alarm/data/repositories/alarm_repository_impl.dart';
import 'package:moding_application/features/alarm/domain/entities/alarm_list_response_dto.dart';
import 'package:moding_application/features/alarm/domain/enums/alarm_filter.dart';
import 'package:moding_application/features/alarm/presentation/providers/alarm_refresh_provider.dart';
import 'package:moding_application/features/alarm/presentation/providers/alarm_viewmodel.dart';
import 'package:moding_application/features/alarm/presentation/screens/widgets/alarm_list_view.dart';
import 'package:moding_application/features/fcm/domain/enums/fcm_target_page.dart';
import 'package:moding_application/features/profile/domain/enums/approval_status.dart';
import 'package:moding_application/features/seller_web/presentation/utils/open_seller_web_page.dart';
import 'package:moding_application/router/enums/notification_type.dart';

import 'widgets/alarm_sliver_appbar.dart';

class AlarmPage extends ConsumerStatefulWidget {
  const AlarmPage({super.key});

  @override
  ConsumerState<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends ConsumerState<AlarmPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final ScrollController _activityScrollController = ScrollController();
  final ScrollController _noticeScrollController = ScrollController();
  ProviderSubscription<int>? _alarmRefreshSubscription;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _activityScrollController.addListener(_onActivityScroll);
    _noticeScrollController.addListener(_onNoticeScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final notifier = ref.read(alarmViewModelProvider.notifier);
      notifier.loadInitial(AlarmFilter.activity);
      notifier.loadInitial(AlarmFilter.notice);
    });

    _alarmRefreshSubscription = ref.listenManual<int>(alarmRefreshProvider, (
      previous,
      next,
    ) {
      if (previous == null || previous == next) return;
      final notifier = ref.read(alarmViewModelProvider.notifier);
      notifier.loadInitial(AlarmFilter.activity);
      notifier.loadInitial(AlarmFilter.notice);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _activityScrollController
      ..removeListener(_onActivityScroll)
      ..dispose();
    _noticeScrollController
      ..removeListener(_onNoticeScroll)
      ..dispose();
    _alarmRefreshSubscription?.close();
    super.dispose();
  }

  void _onActivityScroll() {
    if (!_activityScrollController.hasClients) return;
    if (_activityScrollController.position.extentAfter > 300) return;
    ref.read(alarmViewModelProvider.notifier).loadMore(AlarmFilter.activity);
  }

  void _onNoticeScroll() {
    if (!_noticeScrollController.hasClients) return;
    if (_noticeScrollController.position.extentAfter > 300) return;
    ref.read(alarmViewModelProvider.notifier).loadMore(AlarmFilter.notice);
  }

  Future<void> _handleAlarmTap(AlarmItemDto item) async {
    if (!item.isRead) {
      try {
        final response = await ref
            .read(alarmRepositoryProvider)
            .patchNotificationRead(item.id);
        if (response.success) {
          ref.read(alarmViewModelProvider.notifier).markAsRead(item.id);
        }
      } catch (_) {}
    }

    if (!mounted) return;
    final container = ProviderScope.containerOf(context, listen: false);

    switch (item.page) {
      case FcmTargetPage.orderDetail:
        if (item.referenceId != null) {
          context.push('/check_order/${item.referenceId}');
        }
        break;
      case FcmTargetPage.sellerOrderDetail:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerOrderDetail,
          referenceId: item.referenceId,
        );
        break;
      case FcmTargetPage.claimDetail:
        if (item.referenceId != null) {
          context.push('/claim_check/${item.referenceId}');
        }
        break;
      case FcmTargetPage.sellerClaimDetail:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerClaimDetail,
          referenceId: item.referenceId,
        );
        break;
      case FcmTargetPage.productDetail:
        if (item.referenceId != null) {
          context.push('/product/${item.referenceId}');
        }
        break;
      case FcmTargetPage.sellerProductDetail:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerProductDetail,
          referenceId: item.referenceId,
        );
        break;
      case FcmTargetPage.sellerProductList:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerProductList,
        );
        break;
      case FcmTargetPage.sellerOrderList:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerOrderList,
        );
        break;
      case FcmTargetPage.sellerHome:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerHome,
        );
        break;
      case FcmTargetPage.sellerTaxInvoice:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerTaxInvoice,
        );
        break;
      case FcmTargetPage.sellerSettlement:
        await openSellerWebPage(
          context: context,
          container: container,
          targetPage: FcmTargetPage.sellerSettlement,
        );
        break;
      case FcmTargetPage.noticeList:
        context.push('/notification/${NotificationType.NOTIFICATION.name}');
        break;
      case FcmTargetPage.conversionStatus:
        context.push(
          '/seller_conversion_check',
          extra: ApprovalStatus.REJECTED,
        );
        break;
      case FcmTargetPage.unknown:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alarmViewModelProvider);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const AlarmSliverAppbar(title: '알림'),
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
            AlarmListView(
              items: state.activityItems,
              isInitialLoading: state.isActivityInitialLoading,
              isFetchingMore: state.isActivityFetchingMore,
              scrollController: _activityScrollController,
              onTap: _handleAlarmTap,
            ),
            AlarmListView(
              items: state.noticeItems,
              isInitialLoading: state.isNoticeInitialLoading,
              isFetchingMore: state.isNoticeFetchingMore,
              scrollController: _noticeScrollController,
              onTap: _handleAlarmTap,
            ),
          ],
        ),
      ),
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
