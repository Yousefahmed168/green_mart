import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/functions/validations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/pages/verification.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter your phone number ", style: TextStyles.title),
            SizedBox(height: 10),
            Text(
              "We need to verify you. We will send you a one time verification code. ",
              style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 40),
            CustomTextFormField(
              hintText: "01xxxxxxxxxx",
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (isEgyptianPhone(value!)) {
                  return "Please Enter your phone number";
                }
                return null;
              },
            ),
            SizedBox(height: 40),
            MainButton(onPressed: () {
              pushTo(context, VerificationScreen());
            }, text: "Next"),
          ],
        ),
      ),
    );
  }
}
