import 'package:flutter/material.dart';

Widget TextWithChevron({
  required String text,
  required TextStyle style,
  VoidCallback? onTap,
  double iconSize = 16,
  double spacing = 4,
}) {
  final content = Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(text, style: style),
      SizedBox(width: spacing),
      Transform.translate(
        offset: const Offset(0, 1),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          size: iconSize,
          color: style.color,
        ),
      ),
    ],
  );

  if (onTap == null) return content;

  return InkWell(
    borderRadius: BorderRadius.circular(6),
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: content,
    ),
  );
}
