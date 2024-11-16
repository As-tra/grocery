import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String displayText;
  const CustomButton({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Text(
        displayText,
        textAlign: TextAlign.center,
        style: AppStyles.style16bold(
          context,
          Theme.of(context).colorScheme.surface,
        ),
      ),
    );
  }
}
