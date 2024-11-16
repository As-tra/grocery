import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';
import 'package:grocery/utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class MyFlat extends StatelessWidget {
  const MyFlat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(67),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.iconsMarker),
          const SizedBox(width: 8),
          Text(
            "My Flat",
            style: AppStyles.style12medium(
              context,
              Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ],
      ),
    );
  }
}
