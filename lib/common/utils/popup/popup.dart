import 'package:expense/common/widgets/animation.loader.dart';
import 'package:expense/common/utils/constants/colors.dart';
import 'package:expense/common/utils/helpers/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DJFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        child: Container(
          color: EHelperFunctions.isDarkMode(Get.context!)
              ? EColors.dark
              : EColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              EAnimationLoader(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
