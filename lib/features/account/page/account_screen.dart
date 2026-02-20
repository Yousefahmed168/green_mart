import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/account/widgets/custom_list_tile.dart';
import 'package:green_mart/features/auth/pages/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                            'https://image.shutterstock.com/image-photo/happy-employee-face-man-studio-260nw-2472683451.jpg',
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Yousef Ahmed ',
                                    style: TextStyles.subtitle,
                                  ),
                                  const SizedBox(width: 4),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit_outlined,
                                      size: 18,
                                      color: Colors.green.shade400,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'yousef@gmail.com',
                                style: TextStyles.caption1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  CustomListTile(
                    icon: Icons.shopping_bag_outlined,
                    title: "My Orders",
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),

                  CustomListTile(
                    icon: Icons.card_membership_outlined,
                    title: "My Details",
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  CustomListTile(
                    icon: Icons.location_on_outlined,
                    title: "Delivery Address",
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  CustomListTile(icon: Icons.payment, title: "payment Methods"),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  CustomListTile(
                    icon: Icons.local_offer_outlined,
                    title: "Promo Code",
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  CustomListTile(
                    icon: Icons.notifications_outlined,
                    title: "notifications",
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),

                  CustomListTile(icon: Icons.help_outline, title: "Help"),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  CustomListTile(icon: Icons.info_outline, title: "about"),

                  SizedBox(height: 10),

                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        onPressed: () {
                          pushReplacement(context, LoginScreen());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.logout,
                              color: AppColors.primaryColor,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Log Out',
                              style: TextStyles.caption1.copyWith(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
