
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/product_model2.dart';

part 'product_list_model.g.dart';

@JsonSerializable()
class ProductListModel {
  final List<ProductModel> products;
  final int total;
  final int skip;
  final int limit;

  ProductListModel({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductListModel.fromJson(Map<String, dynamic> json) => _$ProductListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListModelToJson(this);
}
