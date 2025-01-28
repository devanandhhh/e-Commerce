part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartAddedSuccessState extends CartState{
  
}

class CartAddedFaliureState extends CartState{}
