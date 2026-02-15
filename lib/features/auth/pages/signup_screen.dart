import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/functions/validations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/core/widgets/password_text_form_field.dart';
import 'package:green_mart/features/auth/pages/login_screen.dart';
import 'package:green_mart/features/auth/pages/phone_number.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: SvgPicture.asset(AppImages.carrotSvg),
                  ),
                  SizedBox(height: 40),
                  Text("Sign Up ", style: TextStyles.title),
                  SizedBox(height: 16),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Name",
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 7),
                  CustomTextFormField(
                    hintText: "Enter your Name",
                    validator: (value) => isNameValid(value!) ? null : "",
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 7),

                  Text(
                    "Email",
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 7),

                  CustomTextFormField(
                    hintText: "Enter your email",
                    validator: (value) {
                      if (isEmailValid(value!)) {
                        return "Please enter your email";
                      } else if (!value.contains("@")) {
                        return "Please enter a valid email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16),

                  Text(
                    "Password",
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 7),
                  PasswordTextFormField(hintText: "Enter your password"),

                  SizedBox(height: 30),
                  MainButton(
                    onPressed: () {
                      pushTo(context, const PhoneNumber());
                      if (formKey.currentState!.validate()) {}
                    },
                    text: "Sign Up",
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?  ",
                            style: TextStyles.caption1,
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TextButton(
                              onPressed: () {
                                pushTo(context, const LoginScreen());
                              },
                              child: Text(
                                "Login",
                                style: TextStyles.caption1.copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
