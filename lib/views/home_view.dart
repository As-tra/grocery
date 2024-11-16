import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controllers/home_controller.dart';
import 'package:grocery/views/categories_view.dart';
import 'package:grocery/views/details_view.dart';
import 'package:grocery/views/profile_view.dart';
import 'package:grocery/widgets/custom_bottom_navigation_bar.dart';
import 'package:grocery/widgets/custom_floating_action_button.dart';
import 'package:grocery/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            HomeViewBody(),
            CategoriesView(),
            Placeholder(),
            DetailsView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }
}
