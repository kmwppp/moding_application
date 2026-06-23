import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';

class AppTooltip extends StatefulWidget {
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
  State<AppTooltip> createState() => _AppTooltipState();
}

class _AppTooltipState extends State<AppTooltip> {
  final SuperTooltipController _controller = SuperTooltipController();

  Future<void> _toggleTooltip() async {
    if (_controller.isVisible) {
      await _controller.hideTooltip();
      return;
    }
    await _controller.showTooltip();
  }

  @override
  Widget build(BuildContext context) {
    return SuperTooltip(
      controller: _controller,
      positionConfig: PositionConfiguration(
        preferredDirection: widget.direction,
        minimumOutsideMargin: 20.0,
      ),
      interactionConfig: const InteractionConfiguration(
        hideOnTap: true,
        hideOnBarrierTap: true,
        hideOnScroll: true,
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
      content: widget.content,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _toggleTooltip,
        child: widget.child,
      ),
    );
  }
}
