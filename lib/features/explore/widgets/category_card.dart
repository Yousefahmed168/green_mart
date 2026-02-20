import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/explore/pages/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.model,
    required this.backgroundcolor,
  });

  final CategoryModel model;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.accentColor),
        boxShadow: [
          BoxShadow(
            color: Color(0xff555e58).withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  pushTo(context, CategoryScreen());
                },
                child: Center(child: Image.network(model.image)),
              ),
            ),

            Text(
              model.name,
              style: TextStyles.body.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
