part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class AddtoCartEvent extends CartEvent{
  final List<ProductModel> modelProduct;
  AddtoCartEvent(this.modelProduct);
}
