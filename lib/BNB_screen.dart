
import 'package:example/favourite.dart';
import 'package:example/home.dart';
import 'package:example/main.dart';
import 'package:example/postScreen.dart';
import 'package:flutter/material.dart';

class BNBScreen extends StatefulWidget {
 Function function;
 BNBScreen(this.function);


  @override
  State<BNBScreen> createState() => _BNBScreenState();
}

class _BNBScreenState extends State<BNBScreen> {
  updateScreen(){
setState(() {

});
  }
  PageController controller=PageController();
  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Switch(value: Utitless.isDark,onChanged: (v){
          Utitless.isDark=v;
print(Utitless.isDark);
          widget.function!();
        },),

      ),
      bottomNavigationBar: BottomNavigationBar(
        //تغيير شكل item الذي تم الضغط عليه
        currentIndex: i,
        onTap: (index){
          i=index;
          //curver شكل حركة الانتقال من item to item
          controller.animateToPage(index, duration: Duration(milliseconds: 2), curve: Curves.ease);
          setState(() {

          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorate'),
        ],

      ),
      body: PageView(
        children: [
          PostScreen(),
          FavoriteWidget()
        ],
        controller: controller,
      ),
    );
  }
}
