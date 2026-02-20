import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';

import '../../../core/styles/text_styles.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../home/data/product_model.dart';
import '../widgets/category_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
      appBar: AppBar(title: Text("Find Products", style: TextStyles.title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextFormField(
              focusNode: focusNode,
              onChanged: (value) {
                setState(() {
                  searchkey = value;
                });
              },
              hintText: "search",
              prefixIcon: Icon(Icons.search),
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: getProductsByName(searchkey).length,
                itemBuilder: (context, index) {
                  final model = getProductsByName(searchkey)[index];
                  return CategoryCard(
                    model: model,
                    backgroundcolor: AppColors.primaryColor.withValues(
                      alpha: 0.2,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<CategoryModel> getProductsByName(String searchkey) {
  List<CategoryModel> filterdProducts = [];
  for (var product in allProducts) {
    if (product.name.toLowerCase().contains(searchkey)) {
      filterdProducts.add(product);
    }
  }
  return filterdProducts;
}
