import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'postModel.dart';

class PostWidget extends StatelessWidget {
  PostModel postModel;

  PostWidget(this.postModel);

  toggleIsLike() {
    postModel.isFavorite = !(postModel.isFavorite ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.blueGrey, // Specify your border color here
          width: 1, // Specify the border width
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: ClipOval(
                    child: Image.network(postModel?.user?.image ?? '',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40, errorBuilder: (x, y, z) {
                      return Icon(Icons.image_not_supported_sharp);
                    }),
                  )),
              SizedBox(
                height: 10,
                width: 16,
              ),
              Text(postModel?.user?.name ?? ''),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Image.network(postModel?.image ?? '',
              height: 150,
              fit: BoxFit.cover,
              width: double.infinity, errorBuilder: (x, y, z) {
            return Icon(Icons.image_not_supported_sharp);
          }),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                toggleIsLike();
              },
              child: Icon(
                Icons.favorite,
                color:
                    (postModel?.isFavorite ?? false) ? Colors.red : Colors.grey,
              )),
          SizedBox(
            height: 10,
          ),
          Text(postModel?.content ?? ''),
          SizedBox(
            height: 10,
          ),
          Text("")
        ],
      ),
    );
  }
}
