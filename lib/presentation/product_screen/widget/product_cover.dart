import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/data/model/model.dart';
import 'package:flutter/material.dart';

class ProductCover extends StatelessWidget {
  const ProductCover({
    super.key,
    
    required this.productModel,
  });

  
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
      width: MediaQuery.of(context).size.width,
      color: kWhite,
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .40,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  productModel.image,
                ),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}