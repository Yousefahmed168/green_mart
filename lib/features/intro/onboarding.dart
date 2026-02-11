import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // image
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 27,
            left: 27,
            bottom: 70,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImages.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColors.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  "Welcome\n to our store ",
                  textAlign: TextAlign.center,
                  style: TextStyles.headline.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                ),
                SizedBox(height: 5),

                Text(
                  "Ger your groceries in as fast as one hour",
                  textAlign: TextAlign.center,
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                ),
                SizedBox(height: 20),
                MainButton(text: "Get Started", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
