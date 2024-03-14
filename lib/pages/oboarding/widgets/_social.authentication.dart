import 'package:expense/common/utils/constants/colors.dart';
import 'package:expense/common/utils/constants/image.dart';
import 'package:expense/common/utils/constants/sizes.dart';
import 'package:expense/pages/auth/sign-in/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ESocialLogin extends GetView<LoginController> {
  const ESocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => controller.googleSignIn(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  width: ESizes.iconMd,
                  height: ESizes.iconMd,
                  image: AssetImage(EImageString.goggle),
                ),
                const SizedBox(width: ESizes.spaceBtwItems),
                Text(
                  'Continue with Google',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: EColors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => controller.facebookSignIn(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  width: ESizes.iconMd,
                  height: ESizes.iconMd,
                  image: AssetImage(EImageString.facebook),
                ),
                const SizedBox(width: ESizes.spaceBtwItems),
                Text(
                  'Continue with Facebook',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: EColors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
