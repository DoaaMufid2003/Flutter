import 'package:example/assigment2.dart';
import 'package:example/assignment.dart';
import 'package:example/postWidget1.dart';
import 'package:example/products/productScreen.dart';
import 'package:flutter/material.dart';
import 'postScreen.dart';
import 'package:example/MainScreen.dart';
import 'postWidget1.dart';
import 'package:example/Post1Screen.dart';

void main() {
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
  // Post object=new Po;
  var i;
  runApp(MaterialApp(home: Assigment2()
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text("AppBar"),
      //   ),
      //   body: Column(
      //    children: data.map((e){
      //      return Post(e["name"],e["image_url"],e["city"]);
      //    }).toList()
      //   ),
      // ),
      ));
}
