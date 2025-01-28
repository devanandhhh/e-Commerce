import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors.dart';
import '../../widgets/custom_snakbar.dart';

class AddCartButton extends StatelessWidget {
  // final String? bookId;
  const AddCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(kSnakbar(
          text: "Successfully Added to Cart",
        ));
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
