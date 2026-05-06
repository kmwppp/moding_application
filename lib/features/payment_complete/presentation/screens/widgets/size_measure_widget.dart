import 'package:flutter/material.dart';

class SizeMeasureWidget extends StatefulWidget {
  final Widget child;
  final Function(Size size) onChange;

  const SizeMeasureWidget({required this.child, required this.onChange});

  @override
  State<SizeMeasureWidget> createState() => _SizeMeasureWidgetState();
}

class _SizeMeasureWidgetState extends State<SizeMeasureWidget> {
  Size? _oldSize;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final size = context.size;
      if (size != null && _oldSize != size) {
        _oldSize = size;
        widget.onChange(size);
      }
    });

    return widget.child;
  }
}
