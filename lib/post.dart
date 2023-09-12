import 'package:flutter/cupertino.dart';

class Post extends StatelessWidget{
  String? name;
  String? image_url;
  String? city;
  Post.fromMap(Map map){
    name=map["name"];
    city=map["city"];
    image_url=map["image_url"];
  }


  Post(this.name, this.image_url, this.city);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [Image.network(image_url!,height: 50,width: 50,),Text(name!),Text(city!)],
    );
  }


}