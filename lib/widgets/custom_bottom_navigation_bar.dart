import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controllers/home_controller.dart';
import 'package:grocery/utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
  });
  final HomeController controller = Get.find();
  final List<String> sections = [
    Assets.iconsHome,
    Assets.iconsCat,
    '',
    Assets.iconsCalenderIcon,
    Assets.iconsPersonIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.symmetric(
        vertical: 23,
        horizontal: 32,
      ),
      child: Obx(() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: sections.asMap().entries.map((ele) {
            return ele.key != 2
                ? GestureDetector(
                    onTap: () {
                      controller.updateIndex(value: ele.key);
                    },
                    child: SvgPicture.asset(
                      height: 24,
                      ele.value,
                      colorFilter: ColorFilter.mode(
                        controller.currentIndex.value == ele.key
                            ? Theme.of(context).colorScheme.onSurface
                            : const Color(0xffDBDBDB),
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                : const SizedBox();
          }).toList(),
        );
      }),
    );
  }
}
