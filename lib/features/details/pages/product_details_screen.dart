import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/cart/pages/cart_screen.dart';
import 'package:green_mart/features/home/data/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.model});

  final ProductModel model;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff2f3f2),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.3,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Hero(
                  tag: widget.model.tagKey,
                  child: Image.network(widget.model.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    widget.model.name,

                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  FloatingActionButton(
                    backgroundColor: AppColors.backgroundColor,
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: Icon(
                      Icons.remove,
                      size: 30,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  FloatingActionButton(
                    backgroundColor: AppColors.backgroundColor,
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$${(widget.model.price * counter).toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    title: Text(
                      'Product Details',
                      style: TextStyles.caption1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    children: [
                      Text(
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'Nutritions',
                  style: TextStyles.caption1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '100g',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.greyColor,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.keyboard_arrow_right_outlined, size: 20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'Review',
                  style: TextStyles.caption1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, size: 20, color: AppColors.tangoColor),
                    Icon(Icons.star, size: 20, color: AppColors.tangoColor),
                    Icon(Icons.star, size: 20, color: AppColors.tangoColor),
                    Icon(Icons.star, size: 20, color: AppColors.tangoColor),
                    Icon(
                      Icons.star_half_outlined,
                      size: 20,
                      color: AppColors.tangoColor,
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.keyboard_arrow_right_outlined, size: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 25),
        child: ElevatedButton(
          onPressed: () {
            pushTo(context, CartScreen());
          },
          child: Text(
            'Add To Cart',
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
