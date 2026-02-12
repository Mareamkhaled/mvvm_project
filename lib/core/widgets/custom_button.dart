import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
  });
  final String text;
  final void Function() onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.myBlack,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
