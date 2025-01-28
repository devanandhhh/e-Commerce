import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/data/api/product_service.dart';
import 'package:e_commerce_app/data/model/model.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) async {
      ProductService service = ProductService();
      emit(HomeProductLoadingState());
      try {
        log("fetching data ");
        List<ProductModel> products = await service.fetchProducts();
        log('Fetch data $products');
        emit(HomeProductLoadedState(productList: products));
      } catch (e) {
        log("error on product bloc $e");
        emit(HomeProductFaliureSate(error: e.toString()));
      }
    });
  }
}
