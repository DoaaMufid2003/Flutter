import 'package:example/data.dart';
import 'package:flutter/material.dart';

import 'postWidget.dart';
class FavoriteWidget extends StatefulWidget {
  // Function function;
  // FavoriteWidget(this.function);


  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {


  updateScreen(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: postsModel.where((element) => element.isFavorite).length,
        itemBuilder: (c, i) {
          return PostWidget(postsModel
              .where((element) => element.isFavorite == true)
              .toList()[i],
              updateScreen);
        });
  }
}
