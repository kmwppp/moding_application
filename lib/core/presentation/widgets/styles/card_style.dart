import 'package:flutter/material.dart';

class CardStyle {
  static const List<Color> cardColors = [
    Color(0xFF65559D),
    Color(0xFF33455E),
    Color(0xFF715046),
    Color(0xFF32431E),
    Color(0xFFBCC1C2),
    Color(0xFF8F486F),
    Color(0xFF7A2231),
    Color(0xFF933542),
    Color(0xFFC19A22),
    Color(0xFF4A6A73),
    Color(0xFFD0CCC3),
    Color(0xFF444F66),
    Color(0xFF7B8995),
    Color(0xFF465A31),
    Color(0xFF8B8E8B),
    Color(0xFF567255),
  ];

  static Color colorByIndex(int index, {int offset = 0}) {
    return cardColors[(index + offset) % cardColors.length];
  }

  static Color colorById(int id) {
    return cardColors[id % cardColors.length];
  }

  static List<Color> gradientFor(Color color) {
    return [Colors.transparent, color];
  }

  static Color textColorFor(Color color) {
    return color.computeLuminance() > 0.42 ? Colors.black : Colors.white;
  }
}
