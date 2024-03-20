import 'package:expense/common/utils/constants/colors.dart';
import 'package:expense/common/utils/theme/custom/app.bar.dart';
import 'package:expense/common/utils/theme/custom/bottom.sheet.dart';
import 'package:expense/common/utils/theme/custom/checkbox.dart';
import 'package:expense/common/utils/theme/custom/chip.dart';
import 'package:expense/common/utils/theme/custom/elevated.button.dart';
import 'package:expense/common/utils/theme/custom/outlined.button.dart';
import 'package:expense/common/utils/theme/custom/text.field.dart';
import 'package:expense/common/utils/theme/custom/text.theme.dart';
import 'package:flutter/material.dart';

class EAppTheme {
  const EAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: ETextTheme.lightTextTheme,
    chipTheme: EChipTheme.lightChipTheme,
    scaffoldBackgroundColor: EColors.white,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: ETextTheme.darkTextTheme,
    chipTheme: EChipTheme.darkChipTheme,
    scaffoldBackgroundColor: EColors.dark,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.darkInputDecorationTheme,
  );
}
