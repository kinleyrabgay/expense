import 'package:expense/common/utils/constants/image.dart';
import 'package:expense/common/utils/constants/text.dart';
import 'package:expense/pages/oboarding/index.dart';
import 'package:expense/pages/oboarding/widgets/_onboarding.dot.navigation.dart';
import 'package:expense/pages/oboarding/widgets/_onboarding.next.dart';
import 'package:expense/pages/oboarding/widgets/_onboarding.page.dart';
import 'package:expense/pages/oboarding/widgets/_onboarding.skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: EImageString.onboardingImage1,
                title: ETextString.onBoardingTitle1,
                subtitle: ETextString.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: EImageString.onboardingImage2,
                title: ETextString.onBoardingTitle2,
                subtitle: ETextString.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: EImageString.onboardingImage3,
                title: ETextString.onBoardingTitle3,
                subtitle: ETextString.onBoardingSubTitle3,
              )
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigation(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
