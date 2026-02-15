import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/pages/phone_number.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter verification code ", style: TextStyles.title),
            SizedBox(height: 10),
            Text(
              "We have sent SMS to: 01XXXXXXXXXX. ",
              style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 40),
            Pinput(
              length: 5,
              showCursor: true,
              defaultPinTheme: PinTheme(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.accentColor,

                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: TextStyles.body.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: TextButton(
                onPressed: () {
                  pop(context, PhoneNumber());
                },
                child: Text(
                  "Change Phone Number",
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            MainButton(text: "Confirm", onPressed: () {}),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  "Resend confirmation code (1:23)",
                  style: TextStyles.body.copyWith(color: AppColors.blackColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
