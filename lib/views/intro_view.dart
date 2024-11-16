import 'package:flutter/material.dart';
import 'package:grocery/widgets/intro_view_body.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroViewBody(),
    );
  }
}
