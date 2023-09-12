import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.menu_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://plus.unsplash.com/premium_photo-1675063044882-522a7d281b2f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2788&q=80",
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Nusa Penida",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5),
              child: Text(
                  "In first case you specified twice, in second case you specified infinite width. "
                  "These are definitely tricks despite they are official and functional "
                  "In first case you specified twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Picture",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )),
            ),
            Center(
              // alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1693165074594-774461bc1564?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [],
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1693803959595-c11af88ecc6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [],
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.network(
                        "https://plus.unsplash.com/premium_photo-1666823703747-958cca43af25?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [],
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1693890457640-33df2e4e97d1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [],
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1693803817885-e6643dcc2242?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [],
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text("More in Bali", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,color: Colors.green),)),
                ),
                Icon(Icons.navigate_next_rounded,color: Colors.green,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
