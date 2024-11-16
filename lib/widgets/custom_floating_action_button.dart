import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/controllers/cart_controller.dart';
import 'package:grocery/utils/app_styles.dart';
import 'package:grocery/utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<CartController>(
      builder: (controller) {
        return Badge.count(
          isLabelVisible: controller.products.isNotEmpty,
          alignment: Alignment.bottomCenter,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          textStyle: AppStyles.style14medium(
            context,
            Theme.of(context).colorScheme.surface,
          ),
          count: controller.products.length,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: SvgPicture.asset(Assets.iconsCart),
          ),
        );
      },
    );
  }
}
