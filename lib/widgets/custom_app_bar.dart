import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';
import 'package:grocery/utils/assets.dart';
import 'package:grocery/widgets/my_flat.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildProfile(context),
        const SizedBox(width: 11),
        _buildGreeting(context),
        const Spacer(),
        const MyFlat(),
      ],
    );
  }

  Column _buildGreeting(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good morning",
          style: AppStyles.style12medium(
            context,
            Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        Text(
          "Amelia Barlow",
          style: AppStyles.style16medium(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  Widget _buildProfile(BuildContext context) {
    return Container(
      height: 50,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.tertiaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Image.asset(
          Assets.imagesAvatar,
        ),
      ),
    );
  }
}
