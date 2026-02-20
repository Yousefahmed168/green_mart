import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/widgets/item_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Exclusive Offer", style: TextStyles.title),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: TextStyles.caption1.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ItemCard(model: offers[index]);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: offers.length,
          ),
        ),
      ],
    );
  }
}
