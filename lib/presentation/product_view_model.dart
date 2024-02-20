import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/domain/model/product_list_model.dart';
import 'package:untitled/domain/model/product_model2.dart';

class ProductViewModel extends ChangeNotifier {
  List<ProductModel> products = [];

  Future<void> _fetch() async {
    try {
      final dio = Dio();
      var response = await dio.get("https://dummyjson.com/products");
      products = ProductListModel.fromJson(response.data).products;
    } catch (e) {
    }
  }
}