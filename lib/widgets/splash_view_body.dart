import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/utils/app_routing.dart';
import 'package:grocery/widgets/app_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(AppRouting.intro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppLogo(radius: 55),
    );
  }
}
