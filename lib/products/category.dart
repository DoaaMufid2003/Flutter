
class Product {
  int? id;
  String? name;
  String? image;
  int? price;

  Product(Map map) {
    id = map["productId"];
    name = map["productName"];
    image = map["productImage"];
    price = map["price"];
  }
}

class Category{
  int? idCategory;
  String? name;
  String? image;
  List<Product>? products;
  Category.fromMap(Map map1){
    idCategory=map1["id"];
    name=map1["categoryName"];
    image=map1["categoryImage"];
    List<Map> allProduct=map1["product"]??[];
    products=allProduct.map((e) => Product(e)).toList();
  }
}
