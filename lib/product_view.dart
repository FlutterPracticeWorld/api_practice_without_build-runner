
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/product_model.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API 테스트"),
      ),
      body: FutureBuilder(
        future: _fetch(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("title ${data.title}"),
                Text(
                  "description ${data.description}",
                ),
                Text(
                  "price ${data.price}원",
                ),
                Text(
                  "discount ${data.discountPercentage}%",
                ),
                Text(
                    "rating ${data.rating}"
                ),
                Text(
                  "stock ${data.stock}",
                ),
                Text(
                    "brand ${data.brand}"
                ),
                Text(
                    "category ${data.category}"
                ),
                Image.network(data.thumbnail)
              ],
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<ProductModel?> _fetch() async {
    try {
      final dio = Dio();
      var response = await dio.get("https://dummyjson.com/products/1");
      return ProductModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}