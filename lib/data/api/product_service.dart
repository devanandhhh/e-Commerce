import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/model.dart';

class ProductService {
  final String apiUrl = 'https://fakestoreapi.com/products';

  // Fetch products from API
  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> productList = json.decode(response.body);
        return productList
            .map((product) => ProductModel.fromJson(product))
            .toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (error) {
      throw Exception('Error fetching products: $error');
    }
  }
}
