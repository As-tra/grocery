import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String displayText;
  final VoidCallback fn;
  const CustomButton({super.key, required this.displayText, required this.fn});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fn,
      child: Container(
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
      ),
    );
  }
}
