import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';

class AppTooltip extends StatelessWidget {
  final Widget child;
  final Widget content;
  final TooltipDirection direction;

  const AppTooltip({
    super.key,
    required this.child,
    required this.content,
    this.direction = TooltipDirection.auto,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SuperTooltipController(); // 내부에서 관리

    return SuperTooltip(
      controller: controller,
      positionConfig: PositionConfiguration(
        preferredDirection: direction,
        minimumOutsideMargin: 20.0,
      ),
      style: const TooltipStyle(
        backgroundColor: Colors.white,
        borderColor: Colors.white,
        borderRadius: 10.0,
        hasShadow: true,
        shadowColor: Colors.black26,
        shadowBlurRadius: 20.0,
        bubbleDimensions: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
      ),
      barrierConfig: const BarrierConfiguration(
        show: true,
        color: Colors.transparent,
      ),
      content: content,
      child: GestureDetector(
        onTap: () => controller.showTooltip(),
        child: child,
      ),
    );
  }
}
