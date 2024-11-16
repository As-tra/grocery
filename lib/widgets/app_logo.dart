import 'package:flutter/material.dart';
import 'package:grocery/utils/assets.dart';
import 'package:svg_flutter/svg.dart';

class AppLogo extends StatelessWidget {
  final double radius;
  const AppLogo({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      child: SvgPicture.asset(Assets.iconsLogo),
    );
  }
}
