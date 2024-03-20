import 'package:expense/common/utils/constants/sizes.dart';
import 'package:expense/common/utils/constants/text.dart';
import 'package:expense/common/widgets/divider.dart';
import 'package:expense/common/widgets/text.header.dart';
import 'package:expense/pages/auth/sign-in/widgets/_login.form.dart';
import 'package:expense/pages/oboarding/widgets/_social.authentication.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              children: [
                // Auth Email Header
                EHeaderText(
                    title: ETextString.authEmailTitle,
                    subTitle: ETextString.authEmailSubTitle),
                SizedBox(height: ESizes.spaceBtwSections),

                // --- Login form
                ELoginForm(),
                SizedBox(height: ESizes.spaceBtwSections),

                // --- Divier
                EFormDivider(divierText: ETextString.orSignInWith),
                SizedBox(height: ESizes.spaceBtwSections),

                // ---- Social button
                ESocialLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
