import 'package:flutter/material.dart';
import 'package:grocery/widgets/custom_app_bar.dart';
import 'package:grocery/widgets/custom_background.dart';
import 'package:grocery/widgets/custom_search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 24),
              CustomSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
