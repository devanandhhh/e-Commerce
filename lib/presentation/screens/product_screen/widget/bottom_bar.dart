import 'package:e_commerce_app/data/model/model.dart';
import 'package:e_commerce_app/presentation/screens/product_screen/widget/add_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomPriceAndRating extends StatelessWidget {
  const BottomPriceAndRating({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .09,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '₹ ${productModel.price}.00',
              style:
                  GoogleFonts.inter(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            AddCartButton(model: productModel,)
          ],
        ),
      ),
    );
  }
}
