import 'package:flutter/material.dart';
import 'package:mvvm_project/core/networking/api_constants.dart';
import 'package:mvvm_project/core/widgets/metal_details_screen.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MetalDetailsScreen(
      imagePath: AppImages.silverImage,
      metalType: ApiConstants.silverEndPoint,
      textColor: AppColors.silverColor,
      title: "Silver",
    );
  }
}
