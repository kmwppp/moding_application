import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/product_card.dart';

class ProductInfoPagerSection extends ConsumerStatefulWidget {
  const ProductInfoPagerSection({super.key, required this.paymentId});

  final int paymentId;

  @override
  ConsumerState<ProductInfoPagerSection> createState() =>
      _ProductInfoPagerSectionState();
}

class _ProductInfoPagerSectionState
    extends ConsumerState<ProductInfoPagerSection> {
  final PageController _controller = PageController(viewportFraction: 0.9);

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentCompleteViewModelProvider(widget.paymentId));
    return Column(
      children: [
        ExpandablePageView.builder(
          padEnds: false,
          controller: _controller,
          itemCount: state.paymentInfo!.data.orders.length,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          itemBuilder: (context, index) {
            return ProductCard(index: index, paymentId: widget.paymentId);
          },
        ),

        const SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(state.paymentInfo!.data.orders.length, (
            index,
          ) {
            final isActive = _currentIndex == index;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 16 : 8,
              height: 6,
              decoration: BoxDecoration(
                color: isActive ? Colors.black : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(3),
              ),
            );
          }),
        ),
      ],
    );
  }
}
