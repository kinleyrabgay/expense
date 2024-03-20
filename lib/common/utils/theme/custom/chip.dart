import 'package:expense/common/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EChipTheme {
  EChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: EColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: EColors.black),
    selectedColor: EColors.black,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: EColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: EColors.darkerGrey,
    labelStyle: TextStyle(color: EColors.white),
    selectedColor: EColors.black,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: EColors.white,
  );
}
