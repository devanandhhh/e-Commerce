import 'package:e_commerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:e_commerce_app/data/model/model.dart';
import 'package:e_commerce_app/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/colors.dart';
import '../../../widgets/custom_snakbar.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CartBloc>().add(AddtoCartEvent(model));
        ScaffoldMessenger.of(context).showSnackBar(kSnakbar(
          text: "Successfully Added to Cart",
        ));
        print("cart list $cartList");
      },
      child: Container(
        height: 35,
        width: 100,
        decoration: BoxDecoration(
            color: kMainColor, borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            'Add to Cart',
            style: GoogleFonts.aBeeZee(
                fontSize: 16, fontWeight: FontWeight.bold, color: kWhite),
          ),
        ),
      ),
    );
  }
}
