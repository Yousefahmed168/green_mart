import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/search/widgets/filterd_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: "search",
          child: Material(
            color: Colors.transparent,

            child: CustomTextFormField(
              focusNode: focusNode,
              onChanged: (value) {
                setState(() {
                  searchkey = value;
                });
              },
              hintText: "search",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
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
