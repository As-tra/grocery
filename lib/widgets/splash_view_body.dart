import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/utils/app_routing.dart';
import 'package:grocery/utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 800), () {
      Get.toNamed(AppRouting.intro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 55,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        child: SvgPicture.asset(Assets.iconsLogo),
      ),
    );
  }
}
