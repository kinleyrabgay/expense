import 'package:expense/common/routes/name.dart';
import 'package:expense/pages/oboarding/index.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = AppRoutes.initial;
  static final RouteObserver<Route> observer = RouteObserver();

  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.expense,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
  ];
}
