import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Text(
          "Categories",
          style: AppStyles.style18bold(
            context,
            Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
