import 'package:expense/common/utils/constants/colors.dart';
import 'package:expense/common/utils/constants/sizes.dart';
import 'package:expense/common/utils/device/device_utility.dart';
import 'package:expense/common/utils/helpers/functions.dart';
import 'package:expense/pages/oboarding/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingNextButton extends GetView<OnboardingController> {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          controller.nextPage();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? EColors.primary : EColors.black),
        child: const Icon(
          CupertinoIcons.arrow_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
