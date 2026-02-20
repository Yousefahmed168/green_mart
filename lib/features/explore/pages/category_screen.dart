import 'package:flutter/material.dart';

import '../../home/data/product_model.dart';
import '../../search/widgets/filterd_grid_view.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final focusNode = FocusNode();
  String searchkey = "";
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frash Fruits & Vegetable")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FilterdGridView(products: getProductsByName(searchkey)),
      ),
    );
  }
}

List getProductsByName(String searchkey) {
  List filterdProducts = [];
  for (var product in allProducts) {
    if (product.name.toLowerCase().contains(searchkey)) {
      filterdProducts.add(product);
    }
  }
  return filterdProducts;
}
