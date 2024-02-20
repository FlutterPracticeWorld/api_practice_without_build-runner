class ProductModel {
  final int id;
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final List<String> images;
  final String thumbnail ;


  ProductModel({required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      ProductModel(id: json["id"],
          title: json["title"],
          description: json["description"],
          price: json["price"],
          discountPercentage: json["discountPercentage"],
          rating: json["rating"],
          stock: json["stock"],
          brand: json["brand"],
          category: json["category"],
          thumbnail: json["thumbnail"],
          images: json["images"]
      );
  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    "discountPercentage": discountPercentage,
    "rating": rating,
    "stock": stock,
    "brand": brand,
    "category": category,
    "images": images,
    "thumbnail": thumbnail,
  };
}
