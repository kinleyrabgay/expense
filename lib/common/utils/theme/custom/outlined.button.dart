import 'package:expense/common/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EOutlinedButtonTheme {
  EOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.black,
      side: const BorderSide(color: EColors.grey),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.white,
      side: const BorderSide(color: EColors.grey),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
  );
}
