import 'package:flutter/material.dart';
import '../../home/data/product_model.dart';
import '../../home/widgets/item_card.dart';
import '../../explore/widgets/category_card.dart';
import 'package:green_mart/core/styles/colors.dart';

class FilterdGridView extends StatelessWidget {
  const FilterdGridView({super.key, required this.products});

  final List products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisExtent: 250,
      ),
      itemBuilder: (context, index) {
        final item = products[index];
        if (item is ProductModel) {
          return ItemCard(model: item);
        }
        if (item is CategoryModel) {
          return CategoryCard(
            model: item,
            backgroundcolor: AppColors.backgroundColor,
          );
        }
        return SizedBox.shrink();
      },
      itemCount: products.length,
    );
  }
}
