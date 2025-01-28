part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class HomeProductLoadingState extends ProductState {}

class HomeProductLoadedState extends ProductState {
  final List<ProductModel> productList;
  HomeProductLoadedState({required this.productList});
}
class HomeProductFaliureSate extends ProductState{
  final String error;
  HomeProductFaliureSate({required this.error});
}
