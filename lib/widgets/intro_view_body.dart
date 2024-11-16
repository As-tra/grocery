import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';
import 'package:grocery/utils/assets.dart';
import 'package:grocery/widgets/app_logo.dart';
import 'package:grocery/widgets/custom_button.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesBackgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const AppLogo(radius: 31),
              const SizedBox(height: 32),
              Text(
                "Get your groceries delivered to your home",
                textAlign: TextAlign.center,
                style: AppStyles.style28bold(
                  context,
                  Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "The best delivery app in town for delivering your daily fresh groceries",
                textAlign: TextAlign.center,
                style: AppStyles.style16medium(
                  context,
                  Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 64.0),
                child: CustomButton(displayText: "Shop now"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
