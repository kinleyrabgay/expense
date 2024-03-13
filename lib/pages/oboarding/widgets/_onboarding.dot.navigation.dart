import 'package:expense/common/utils/constants/colors.dart';
import 'package:expense/common/utils/constants/sizes.dart';
import 'package:expense/common/utils/device/device_utility.dart';
import 'package:expense/common/utils/helpers/functions.dart';
import 'package:expense/pages/oboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends GetView<OnboardingController> {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 30,
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? EColors.white : EColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
