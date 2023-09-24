import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'postModel.dart';
import 'postWidget.dart';
import 'data.dart';

class PostScreen extends StatelessWidget {

  // List<PostModel> postsModel =
  //     mapData.map((e) => PostModel.fromMap(e)).toList();

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
          itemCount: postsModel.length,
          itemBuilder: (c, i) {
        return PostWidget(postsModel[i]);
      });
  }
}
