import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/notification/presentation/providers/notification_state.dart';
import 'package:moding_application/features/notification/presentation/providers/notification_viewmodel.dart';
import 'package:moding_application/features/notification/presentation/screens/sections/faq_category_section.dart';
import 'package:moding_application/features/notification/presentation/screens/widgets/faq_item.dart';
import 'package:moding_application/features/notification/presentation/screens/widgets/notice_item.dart';
import 'package:moding_application/router/enums/notification_type.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key, required this.notificationType});

  final NotificationType notificationType;

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(notificationViewModelProvider.notifier)
          .loadInitial(widget.notificationType);
    });
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    if (_scrollController.position.extentAfter > 300) return;

    ref
        .read(notificationViewModelProvider.notifier)
        .loadMore(widget.notificationType);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(notificationViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            AppSliverAppbar(
              title: widget.notificationType == NotificationType.NOTIFICATION
                  ? '공지사항'
                  : '자주 묻는 질문',
            ),

            if (widget.notificationType == NotificationType.FAQ)
              SliverToBoxAdapter(child: FaqCategorySection(state: state)),
            if (state.isInitialLoading && _isCurrentListEmpty(state))
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (_currentItemCount(state) == 0)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    '등록된 내용이 없어요.',
                    style: context.body.copyWith(color: AppColors.darkGrey),
                  ),
                ),
              )
            else
              SliverList.builder(
                itemCount:
                    _currentItemCount(state) + (state.isFetchingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == _currentItemCount(state)) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  if (widget.notificationType ==
                      NotificationType.NOTIFICATION) {
                    final item = state.noticeItems[index];
                    return NoticeItem(
                      item: item,
                      isExpanded: state.noticeExpandedId == item.id,
                      isContentLoading: state.isContentLoading.contains(
                        item.id,
                      ),
                      content: state.noticeContents[item.id],
                      onTap: () => ref
                          .read(notificationViewModelProvider.notifier)
                          .toggleNotice(item.id),
                    );
                  }

                  final item = state.faqItems[index];
                  return FaqItem(
                    item: item,
                    isExpanded: state.faqExpandedId == item.id,
                    isContentLoading: state.isContentLoading.contains(item.id),
                    content: state.faqContents[item.id],
                    onTap: () => ref
                        .read(notificationViewModelProvider.notifier)
                        .toggleFaq(item.id),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  bool _isCurrentListEmpty(NotificationState state) {
    return widget.notificationType == NotificationType.NOTIFICATION
        ? state.noticeItems.isEmpty
        : state.faqItems.isEmpty;
  }

  int _currentItemCount(NotificationState state) {
    return widget.notificationType == NotificationType.NOTIFICATION
        ? state.noticeItems.length
        : state.faqItems.length;
  }
}
