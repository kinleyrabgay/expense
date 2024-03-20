import 'package:expense/common/utils/constants/colors.dart';
import 'package:expense/common/utils/constants/sizes.dart';
import 'package:expense/common/utils/validators/validator.dart';
import 'package:expense/pages/auth/sign-in/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ELoginForm extends GetView<LoginController> {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Email',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 2),
        TextFormField(
          controller: controller.email,
          validator: (value) => EValidator.validateEmail(value),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
            hintText: 'youremail@email.xyz',
            hintStyle: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwSections),
        // Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => controller.redirectAuthScreen(),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Next', style: TextStyle(color: EColors.white)),
                SizedBox(width: ESizes.spaceBtwItems),
                Icon(Iconsax.arrow_right_1)
              ],
            ),
          ),
        )
      ],
    );
  }
}
