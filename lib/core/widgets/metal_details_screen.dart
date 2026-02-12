import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_project/core/cubit/metal_cubit.dart';
import 'package:mvvm_project/core/di/setup.dart';
import '../constants/app_colors.dart';

class MetalDetailsScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color textColor;
  final String metalType;

  const MetalDetailsScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.textColor,
    required this.metalType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MetalCubit>()..fetchGoldPrice(metalType),
      child: Scaffold(
        backgroundColor: AppColors.myBlack,
        appBar: AppBar(
          automaticallyImplyLeading: false,

          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: textColor),
          ),
          centerTitle: true,
          backgroundColor: AppColors.myBlack,
          title: Text(
            title,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocBuilder<MetalCubit, MetalState>(
          builder: (context, state) {
            if (state is MetalLoading) {
              return Center(child: CircularProgressIndicator(color: textColor));
            } else if (state is MetalSuccess) {
              final metal = state.metalResponse;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(imagePath, height: 200),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: "${metal.name} Price: ",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: metal.price.toString(),
                              style: TextStyle(
                                color: textColor,
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: " \$",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(child: Text("Error fetching data"));
            }
          },
        ),
      ),
    );
  }
}
