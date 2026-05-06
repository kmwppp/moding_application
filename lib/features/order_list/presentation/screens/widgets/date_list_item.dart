import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/entities/order_list_response_dto.dart';
import '../../providers/order_list_viewmodel.dart';
import 'order_list_content.dart';

class DateListItem extends ConsumerStatefulWidget {
  const DateListItem({super.key, required this.date});

  final String date;

  @override
  ConsumerState<DateListItem> createState() => _DateListItemState();
}

class _DateListItemState extends ConsumerState<DateListItem>
    with AutomaticKeepAliveClientMixin {
  static const int _pageSize = 10;

  bool _isExpanded = false;
  bool _isLoading = false;
  bool _isLoadingMore = false;
  String? _errorMessage;
  List<OrderListItemDto> _orders = const [];
  int _currentPage = -1;
  int _totalPages = 1;
  ScrollPosition? _scrollPosition;

  bool get _hasMore => _currentPage + 1 < _totalPages;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final position = Scrollable.maybeOf(context)?.position;
    if (_scrollPosition == position) return;

    _scrollPosition?.removeListener(_handleScroll);
    _scrollPosition = position;
    _scrollPosition?.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollPosition?.removeListener(_handleScroll);
    super.dispose();
  }

  void _handleScroll() {
    final position = _scrollPosition;
    if (position == null ||
        !_isExpanded ||
        _isLoading ||
        _isLoadingMore ||
        !_hasMore) {
      return;
    }

    if (position.extentAfter < 240) {
      _loadNextPage();
    }
  }

  Future<void> _toggleExpanded() async {
    if (_isExpanded) {
      setState(() => _isExpanded = false);
      return;
    }

    setState(() {
      _isExpanded = true;
      _errorMessage = null;
    });

    if (_orders.isNotEmpty) return;

    await _loadOrders();
  }

  Future<void> _loadOrders() async {
    setState(() {
      _isLoading = true;
      _currentPage = -1;
      _totalPages = 1;
      _orders = const [];
    });
    try {
      final response = await ref
          .read(orderListViewModelProvider.notifier)
          .getOrderList(widget.date, page: 0, size: _pageSize);
      if (!mounted) return;

      setState(() {
        _orders = response.data.content;
        _currentPage = response.data.number;
        _totalPages = response.data.totalPages;
        _isLoading = false;
        _errorMessage = null;
      });
    } catch (e) {
      if (!mounted) return;

      setState(() {
        _isLoading = false;
        _errorMessage = '주문 정보를 불러오지 못했습니다.';
      });
    }
  }

  Future<void> _loadNextPage() async {
    if (!_hasMore) return;

    setState(() => _isLoadingMore = true);
    try {
      final response = await ref
          .read(orderListViewModelProvider.notifier)
          .getOrderList(widget.date, page: _currentPage + 1, size: _pageSize);
      if (!mounted) return;

      setState(() {
        _orders = [..._orders, ...response.data.content];
        _currentPage = response.data.number;
        _totalPages = response.data.totalPages;
        _isLoadingMore = false;
      });
    } catch (e) {
      if (!mounted) return;

      setState(() => _isLoadingMore = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Column(
      children: [
        InkWell(
          onTap: _toggleExpanded,
          child: Container(
            height: 50,
            color: AppColors.lightGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    widget.date,
                    style: context.bodyLarge.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                  const Spacer(),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 180),
                    turns: _isExpanded ? 0.5 : 0,
                    child: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.darkGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 180),
          child: !_isExpanded
              ? const SizedBox.shrink()
              : OrderListContent(
                  isLoading: _isLoading,
                  errorMessage: _errorMessage,
                  orders: _orders,
                  onRefreshRequested: _loadOrders,
                  isLoadingMore: _isLoadingMore,
                  hasMore: _hasMore,
                ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
