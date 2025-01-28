import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/data/model/model.dart';
import 'package:e_commerce_app/presentation/screens/home_screen/home_screen.dart';
// import 'package:e_commerce_app/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<AddtoCartEvent>((event, emit) {
      
      cartList?.add(event.modelProduct);
      
    });
  }
}
