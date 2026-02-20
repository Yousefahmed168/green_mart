import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/functions/navigations.dart';
import '../../../core/widgets/main_button.dart';
import '../../home/page/home_screen.dart';
import '../../../core/styles/colors.dart';
import '../../../core/styles/text_styles.dart';

class AcceptedOrder extends StatelessWidget {
  const AcceptedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset(AppImages.acceptedSvg)),
          SizedBox(height: 50),
          Text(
            'Your Order has been \n accepted',
            style: TextStyles.title,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Your items has been placcd and is on it’s way to being processed',
            textAlign: TextAlign.center,

            style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20),
            child: MainButton(
              text: 'Go To Home',
              onPressed: () {
                pop(context, HomeScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
