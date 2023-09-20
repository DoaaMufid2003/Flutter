import 'package:flutter/material.dart';

class Post1Screen extends StatefulWidget {
  @override
  State<Post1Screen> createState() => _Post1ScreenState();
}

class _Post1ScreenState extends State<Post1Screen> {
  List<String> content = [];
  String commint="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1694845482698-accfce9310f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
            fit: BoxFit.cover,
          ),
          TextField(
            onChanged: (value) {
              commint = value;
            },
            decoration: InputDecoration(
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        content.add(commint);
                      });
                    },
                    child: Icon(
                      Icons.send,
                      size: 35,

                    )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 10),
                    borderRadius: BorderRadius.circular(15))),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: content.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(content[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
