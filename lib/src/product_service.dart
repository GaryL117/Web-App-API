import 'product.dart';
import 'mock_products.dart';
import 'dart:async';

class ProductService {
  Future<List<Product>> getAll() async => mockProducts;


    Future<Product> get(int id) async =>
    (await getAll()).firstWhere((product) => product.id == id);
}