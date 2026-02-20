import 'package:flutter/material.dart';
import 'package:green_mart/features/cart/pages/accepted_order.dart';
import '../../../core/functions/navigations.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/main_button.dart';
import '../../home/data/product_model.dart';
import '../../../core/styles/text_styles.dart';

void showCheckoutBottomSheet(BuildContext context, ProductModel model) {
  showModalBottomSheet(
    context: context,
    // enableDrag: false,
    // isDismissible: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    backgroundColor: AppColors.backgroundColor,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return CheckoutBottomSheet(model: model);
    },
  );
}

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * .7,
        minHeight: 200,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Checkout', style: TextStyles.title),
                        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                      ],
                    ),
                    Column(
                      children: [
                        Divider(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery',
                              style: TextStyles.body.copyWith(
                                color: AppColors.greyColor,
                              ),
                            ),
                            Text(
                              'Select Method',
                              style: TextStyles.body.copyWith(
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Divider(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Payment',
                              style: TextStyles.body.copyWith(
                                color: AppColors.greyColor,
                              ),
                            ),
                            Icon(Icons.payment, color: AppColors.primaryColor),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Divider(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Promo Code',
                              style: TextStyles.body.copyWith(
                                color: AppColors.greyColor,
                              ),
                            ),
                            Text(
                              'pick discount',
                              style: TextStyles.body.copyWith(
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Divider(height: 30),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Cost',
                              style: TextStyles.body.copyWith(
                                color: AppColors.greyColor,
                              ),
                            ),
                            Text(
                              '\$${model.price}',
                              style: TextStyles.body.copyWith(
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            MainButton(
              text: 'Place Order',
              onPressed: () {
                pushTo(context, AcceptedOrder());
              },
            ),
          ],
        ),
      ),
    );
  }
}
