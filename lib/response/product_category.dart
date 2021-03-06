import 'package:json_annotation/json_annotation.dart';

import '../model/category.dart';
part 'product_category.g.dart';

//flutter pub run build_runner build
@JsonSerializable()
class ProductCategory {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? description;
  String? richDescription;
  String? image;
  String? brand;
  int? price;
  int? countInStock;
  int? rating;
  Category? category;

  ProductCategory({
    this.name,
    this.description,
    this.richDescription,
    this.image,
    this.brand,
    this.price,
    this.countInStock,
    this.rating,
    this.category,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);
}
