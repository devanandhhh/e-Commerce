import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/data/model/model.dart';
import 'package:e_commerce_app/presentation/product_screen/widget/bottom_bar.dart';
import 'package:e_commerce_app/presentation/product_screen/widget/product_cover.dart';
import 'package:e_commerce_app/presentation/product_screen/widget/product_info.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text("Details "),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: [

            ProductCover(
              
              productModel: model,
            ),
            Divider(),
            ProductInfo(productModel: model)
          ],
        ),
      ),
      bottomNavigationBar:BottomPriceAndRating(productModel: model),
    );
  }
}
