import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/account/page/account_screen.dart';
import 'package:green_mart/features/cart/pages/cart_screen.dart';
import 'package:green_mart/features/favorite/page/favorite_screen.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/page/home_screen.dart';
import 'package:green_mart/features/explore/pages/explore_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreen();
}

class _MainAppScreen extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(model: bestSelling[0]),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff555e58).withValues(alpha: 0.1),
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.storeSvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.storeSvg,
                color: AppColors.primaryColor,
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.exploreSvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.exploreSvg,
                color: AppColors.primaryColor,
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.cartSvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.cartSvg,
                color: AppColors.primaryColor,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.heartSvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.heartSvg,
                color: AppColors.primaryColor,
              ),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.userSvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.userSvg,
                color: AppColors.primaryColor,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
