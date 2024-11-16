import 'package:flutter/material.dart';
import 'package:grocery/utils/app_styles.dart';
import 'package:grocery/utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(67),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: InputBorder.none,
          prefixIconConstraints: const BoxConstraints.tightFor(
            height: 36,
            width: 36,
          ),
          hintText: "Search category",
          hintStyle: AppStyles.style14medium(
            context,
            Theme.of(context).colorScheme.onSecondary,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SvgPicture.asset(
              Assets.iconsSearchIcon,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
