import 'package:e_commerce_app/core/colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Details"),backgroundColor: kMainColor ,
      ),
      body: Container(),
    );
  }
}
