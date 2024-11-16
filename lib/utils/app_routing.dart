import 'package:get/get_navigation/get_navigation.dart';
import 'package:grocery/views/homve_view.dart';
import 'package:grocery/views/intro_view.dart';
import 'package:grocery/views/splash_view.dart';

abstract class AppRouting {
  static const home = "/home";
  static const intro = "/intro";

  static List<GetPage> pages = [
    GetPage(
      name: '/',
      page: () => const SplashView(),
    ),
    GetPage(
      name: intro,
      page: () => const IntroView(),
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: home,
      page: () => const HomveView(),
    ),
  ];
}
