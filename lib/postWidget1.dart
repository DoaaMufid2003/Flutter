import 'package:flutter/cupertino.dart';

class PostWidget1 extends StatelessWidget {
  String? name;
  String? image_url;
  String? city;

  PostWidget1.fromMap(Map map) {
    name = map["name"];
    city = map["city"];
    image_url = map["image_url"];
  }

  List<Map> data = [
    {
      "image_url":
          "https://images.unsplash.com/photo-1690896896078-ec8a1832edb2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "name": "Cold Narure",
      "city": "city"
    },
    {
      "image_url":
          "https://images.unsplash.com/photo-1690896896078-ec8a1832edb2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "name": "Cold Narure",
      "city": "city"
    },
    {
      "image_url":
          "https://images.unsplash.com/photo-1690896896078-ec8a1832edb2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "name": "Cold Narure",
      "city": "city"
    }
  ];

  // List<Post> post=data.map((e) => Post.fromMap(e).toList();
  PostWidget1.map(this.name, this.image_url, this.city);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (c, i) {
        return PostWidget1.map(data[i]["name"], data[i]["image_url"], data[i]["city"]);
      },
      // children: [Image.network(image_url!,height: 50,width: 50,),Text(name!),Text(city!)],
    );
  }
}
