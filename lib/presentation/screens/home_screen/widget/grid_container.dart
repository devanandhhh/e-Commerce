import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/data/model/model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      height: 400,
      width: 100,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 10, bottom: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width,
              child: Image.network(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shortenString(product.title, 19),
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(product.category),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: kOrange,
                            ),
                            Text(
                              product.rating.toString(),
                              style: GoogleFonts.roboto(
                                  fontSize: 17, color: kBlack),
                            ),
                          ],
                        ),
                        Text(
                          '₹ ${product.price}.00',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kBlack),
                        )
                      ],
                    ),
                    Gap(10),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(fontSize: 10, color: kWhite),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

String shortenString(String input, int range) {
  return input.length > range ? '${input.substring(0, range)}...' : input;
}
