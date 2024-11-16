import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Text(
          "Details",
          style: AppStyles.style18bold(
            context,
            Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}