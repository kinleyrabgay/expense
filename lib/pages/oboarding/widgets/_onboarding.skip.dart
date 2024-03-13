import 'package:expense/common/utils/device/device_utility.dart';
import 'package:expense/pages/oboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingSkip extends GetView<OnboardingController> {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EDeviceUtils.getAppBarHeight() - 15,
      right: 0,
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          controller.skipPage();
        },
        child: const Text(
          'Skip',
        ),
      ),
    );
  }
}
