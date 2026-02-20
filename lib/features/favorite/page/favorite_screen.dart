import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/features/cart/pages/cart_screen.dart';
import 'package:green_mart/features/favorite/widgets/favorite_card.dart';
import 'package:green_mart/features/home/data/product_model.dart';

class FavoriteScreen extends StatelessWidget {
  final ProductModel model;
  const FavoriteScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                FavoriteCard(model: model),
                FavoriteCard(model: model),
                FavoriteCard(model: model),
                FavoriteCard(model: model),
                FavoriteCard(model: model),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              pushTo(context, CartScreen());
            },
            child: const Text('Add All To Cart'),
          ),
        ],
      ),
    );
  }
}
