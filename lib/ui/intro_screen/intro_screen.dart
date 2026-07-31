import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/utils/app_assets.dart';
import 'package:space/utils/app_colors.dart';
import 'package:space/utils/app_routes.dart';
import 'package:space/utils/app_size.dart';
import 'package:space/utils/app_strings.dart';
import 'package:space/utils/app_theme.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.height(context);
    double width = SizeConfig.width(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.introBg, height: double.infinity),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    AppStrings.exploreTheUniverse,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: height * 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(AppRoutes.homeRoute);
                },
                style: ElevatedButton.styleFrom(),
                child: Row(
                  children: [
                    Text(AppStrings.explore),
                    Spacer(),
                    Icon(Icons.arrow_forward, size: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
