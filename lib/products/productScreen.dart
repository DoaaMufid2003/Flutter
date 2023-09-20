import 'dart:math';

import 'package:example/products/category.dart';
import 'package:example/products/data.dart';
import 'package:example/products/productWidget.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Category> MapToCategoryConvert() {
    return categoryData.map((e) => Category.fromMap(e)).toList();
  }

  int id = 0;

  @override
  Widget build(BuildContext context) {
    print(MapToCategoryConvert().length);
    return Scaffold(
      appBar: AppBar(
        title: Text("الرئيسية"),
      ),
      body: Column(
        children: [
          Image.network(
            "https://plus.unsplash.com/premium_photo-1694383414357-6e5cb02b873a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
            height: 200,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: MapToCategoryConvert().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // ...MapToCategoryConvert()?.map((e) {
                      ElevatedButton(
                          onPressed: () {
                            id = MapToCategoryConvert()[index].idCategory!;
                            print(id);

                            setState(() {});
                            // print();
                          },
                          child: Container(
                            child:
                                Text(MapToCategoryConvert()[index].name ?? ''),
                            // decoration: BoxDecoration(
                            //   color:index==id?Colors.black38:Colors.deepOrangeAccent
                            // ),
                          )),
                      id == index
                          ? Expanded(
                              child: Container(
                                  height: 5,
                                  decoration:
                                      BoxDecoration(color: Colors.black38),
                                  child: Text(
                                      MapToCategoryConvert()[index].name ?? '',
                                      style: TextStyle(
                                          color: Colors.transparent))
                              ),
                            )
                          : Expanded(
                            child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.transparent),
                                // child: Text(
                                //   MapToCategoryConvert()[index].name ?? '',
                                //   style: TextStyle(color: Colors.transparent),
                                // )
                  ),
                          )
                      // }).toList() ??
                      //     [],
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: ProductWidget(MapToCategoryConvert()[id]))
        ],
      ),
    );
  }
}
