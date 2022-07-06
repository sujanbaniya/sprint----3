import 'dart:io';

import 'package:BikeServicing/api/product_api.dart';
import 'package:BikeServicing/model/product.dart';

import '../response/get_product_response.dart';

class ProductRepository {
  Future<bool> addProduct(File? file, Product product) async {
    return ProductAPI().addProduct(file, product);
  }

  Future<ProductResponse?> getProducts() async {
    return ProductAPI().getProducts();
  }
}
