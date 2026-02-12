import 'package:flutter/material.dart';
import 'package:mvvm_project/core/networking/api_constants.dart';
import 'package:mvvm_project/core/widgets/metal_details_screen.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MetalDetailsScreen(
      imagePath: AppImages.goldImage,
      metalType: ApiConstants.goldEndPoint,
      textColor: AppColors.goldColor,
      title: "Gold",
    );
  }
}
