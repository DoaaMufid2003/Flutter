import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'postModel.dart';
import 'postWidget.dart';
import 'data.dart';
class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
  // List<PostModel> postsModel =
  // mapData.map((e) => PostModel.fromMap(e)).toList();
}

class _MainWidgetState extends State<MainWidget> {
  List<PostModel> postsModel = [];

  @override
  void initState() {
    super.initState();
    postsModel = mapData.map((e) => PostModel.fromMap(e)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Media"),
      ),
      body: ListView.builder(
          itemCount: postsModel.length,
          itemBuilder: (c, i) {
            return PostWidget(postsModel[i]);
          }),
    );
  }
}

