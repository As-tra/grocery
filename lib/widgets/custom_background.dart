import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  const CustomBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -600,
          left: -220,
          child: CircleAvatar(
            radius: 450,
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
        child
      ],
    );
  }
}
