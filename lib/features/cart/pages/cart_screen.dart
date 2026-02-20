import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/details/widgets/checkout_bottom_sheet.dart';
import 'package:green_mart/features/home/data/product_model.dart';

class CartItem {
  ProductModel product;
  int qty;
  CartItem({required this.product, this.qty = 1});
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late List<CartItem> items;

  @override
  void initState() {
    super.initState();
    items = [
      CartItem(product: offers[0], qty: 1),
      CartItem(product: offers[1], qty: 1),
      CartItem(product: bestSelling[0], qty: 1),
      CartItem(product: bestSelling[2], qty: 1),
    ];
  }

  double get total => items.fold(0, (s, e) => s + e.product.price * e.qty);

  void _inc(int index) {
    setState(() {
      items[index].qty++;
    });
  }

  void _dec(int index) {
    setState(() {
      if (items[index].qty > 1) items[index].qty--;
    });
  }

  void _remove(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart', style: TextStyles.title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (_, _) => Divider(height: 32),
                itemBuilder: (context, index) {
                  final ci = items[index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(ci.product.image, width: 56, height: 56),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    ci.product.name,
                                    style: TextStyles.subtitle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(ci.product.weight, style: TextStyles.caption2),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () => _dec(index),
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: AppColors.accentColor,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    size: 18,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '${ci.qty}',
                                style: TextStyles.title.copyWith(fontSize: 16),
                              ),
                              SizedBox(width: 8),
                              InkWell(
                                onTap: () => _inc(index),
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: AppColors.primaryColor,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: AppColors.backgroundColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Text(
                        '\$${ci.product.price.toStringAsFixed(2)}',
                        style: TextStyles.title,
                      ),
                      SizedBox(width: 12),
                      InkWell(
                        onTap: () => _remove(index),
                        child: Icon(Icons.delete, color: AppColors.greyColor),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      showCheckoutBottomSheet(context, items[0].product);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Go to Checkout',
                          style: TextStyles.title.copyWith(
                            color: AppColors.backgroundColor,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '\$${total.toStringAsFixed(2)}',
                            style: TextStyles.body.copyWith(
                              color: AppColors.backgroundColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
