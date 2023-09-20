class PostModel {
  String? name;
  String? image;
  String? content;
  bool? isFavorite;
  User? user;

  PostModel.fromMap(Map map) {
    name = map["name"];
    image = map["image"];
    content = map["content"];
    isFavorite = map["isFavorite"];
    user = User.fromMap(map["user"]);
  }

  PostModel();
}

class User {
  String? name;
  String? image;

  User.fromMap(Map map) {
    name = map["name"];
    image = map["image"];
  }
}
