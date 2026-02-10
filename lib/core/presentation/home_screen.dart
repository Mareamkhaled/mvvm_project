import 'package:flutter/material.dart';
import 'package:mvvm_project/core/constants/app_colors.dart';
import 'package:mvvm_project/core/constants/app_strings.dart';
import 'package:mvvm_project/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: AppStrings.gold,
              onPressed: () {},
              backgroundColor: AppColors.goldColor,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: AppStrings.silver,
              onPressed: () {},
              backgroundColor: AppColors.silverColor,
            ),
          ],
        ),
      ),
    );
  }
}
