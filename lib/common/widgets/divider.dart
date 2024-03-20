import 'package:expense/common/utils/constants/colors.dart';
import 'package:expense/common/utils/helpers/functions.dart';
import 'package:flutter/material.dart';

class EFormDivider extends StatelessWidget {
  const EFormDivider({
    super.key,
    required this.divierText,
  });

  final String divierText;

  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? EColors.darkGrey : EColors.grey,
            thickness: 0.5,
            // indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          divierText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? EColors.darkGrey : EColors.grey,
            thickness: 0.5,
            indent: 5,
            // endIndent: 60,
          ),
        ),
      ],
    );
  }
}
