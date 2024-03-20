import 'package:expense/common/routes/name.dart';
import 'package:expense/common/store/config.dart';
import 'package:expense/common/store/user.store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteWelcomeMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  RouteWelcomeMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    print(ConfigStore.to.isFirstOpen);
    if (ConfigStore.to.isFirstOpen == false) {
      print('Here');
      return null;
    } else if (UserStore.to.isLogin == true) {
      return const RouteSettings(name: AppRoutes.expense);
    } else {
      return const RouteSettings(name: AppRoutes.signIn);
    }
  }
}
