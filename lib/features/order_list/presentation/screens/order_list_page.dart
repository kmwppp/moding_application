import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/features/order_list/domain/enums/order_list_search_type.dart';
import 'package:moding_application/features/order_list/presentation/providers/order_list_viewmodel.dart';
import 'package:moding_application/features/order_list/presentation/screens/sections/order_list_search_type_section.dart';
import 'package:moding_application/features/order_list/presentation/screens/sections/order_list_section.dart';

class OrderListPage extends ConsumerStatefulWidget {
  const OrderListPage({super.key, required this.type});

  final OrderListSearchType type;

  @override
  ConsumerState<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends ConsumerState<OrderListPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(orderListViewModelProvider.notifier)
          .changeSearchType(widget.type);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "주문 내역"),
            const SliverToBoxAdapter(child: OrderListSearchTypeSection()),
            const OrderListSection(),
            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
      ),
    );
  }
}
