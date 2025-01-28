import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/data/model/model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookTitleAndRating(
                productModel: productModel,
                rating: productModel.rating.toString(),
              ),
              Text(
                // "by ${authorName ?? 'Unknown'}",
                productModel.category,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
              )
            ],
          ),
          Gap(10),
          // Text(
          //   "Publish Date: ${formatDate(bookModel.publishedDate.toString())}",
          //   style: GoogleFonts.poppins(fontSize: 13, color: kGrey600),
          // ),
          Gap(10),
          Text(
            productModel.description,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class BookTitleAndRating extends StatelessWidget {
  BookTitleAndRating({super.key, required this.productModel, this.rating});

  final ProductModel productModel;
  String? rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            productModel.title,
            style:
                GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .1,
        ),
        //raiting
        Row(
          children: [
            Icon(
              Icons.star,
              size: 15,
              color: kOrange,
            ),
            Text(
              productModel.rating.toString(),
              style: GoogleFonts.roboto(fontSize: 29, color: kBlack),
            ),
          ],
        ),
       
        // Container(
        //   height: 40,
        //   width: 80,
        //   decoration: BoxDecoration(
        //       color: kMainColor, borderRadius: BorderRadius.circular(10)),child: Center(child: Text("Add to Cart",style: TextStyle(color: kWhite),)),
        // )
      ],
    );
  }
}
