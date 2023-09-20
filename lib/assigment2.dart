import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Assigment2 extends StatefulWidget {
  const Assigment2({Key? key}) : super(key: key);

  @override
  State<Assigment2> createState() => _Assigment2State();
}

class _Assigment2State extends State<Assigment2> {
  int count = 0;
  num price = 9;

  @override
  void initState() {
    // TODO: implement initState
    price = count * 21.00;
    super.initState();
  }


  bool checkedValue = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;
  bool checkedValue4 = false;
  bool checkedValue5 = false;
  bool checkedValue6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
                "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emF8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "بيتزا خضار",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "بيتزا بالخضار مميزة",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.lightBlue,
                              size: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                count++;
                                price = count * 21.00;
                                count > 10? '${count = 10}' : '$count';
                                count == 10? '${price=10*21.00}' : '$count';
                                print(count);
                                print(price);
                              });
                            },
                          ),
                          Text('$count'),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  count--;
                                  count < 0 ? count = 0 : count;
                                  price = count * 21.00;
                                });
                              },
                              icon: Icon(
                                Icons.text_decrease,
                                color: Colors.lightBlue,
                                size: 15,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 180),
                    Text(
                      "${price}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اختيارك من الحجم (اختياري )",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text("اختر من القائمة", style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        // title: Text("صنف واحد",),
                        value: checkedValue,
                        onChanged: (newValue) {
                          setState(() {
                            if (checkedValue) {}
                            checkedValue = newValue!;
                            price = count * 21.00;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    Text(
                      "صنف 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1.5,
                  indent: 15,
                  endIndent: 15,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        title: Text(
                          "(+9.00دا )",
                          style: TextStyle(color: Colors.grey),
                        ),
                        value: checkedValue2,
                        onChanged: (newValue) {
                          setState(() {

                            checkedValue2 = newValue!;
                            if(checkedValue2){
                            price=  price+9;
                            }else{
                              price=price-9;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    Text(
                      "صنف 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1.5,
                  indent: 15,
                  endIndent: 15,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        title: Text(
                          "(+9.00دا )",
                          style: TextStyle(color: Colors.grey),
                        ),
                        value: checkedValue3,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue3 = newValue!;
                            if(checkedValue3){
                              price=  price+9;
                            }else{
                              price=price-9;
                            }

                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    Text(
                      "صنف 3",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  "اختيارك من الاضافات (اختياري )",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text("اختر من القائمة", style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        // title: Text("صنف واحد",),
                        value: checkedValue4,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue4 = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    Text(
                      "صنف 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        title: Text(
                          "(+9.00دا )",
                          style: TextStyle(color: Colors.grey),
                        ),
                        value: checkedValue5,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue5 = newValue!;
                            if(checkedValue5){
                              price=  price+9;
                            }else{
                              price=price-9;
                            }
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    Text(
                      "صنف 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      child: Row(
                        children: [
                          Text('$price'),
                          Spacer(),
                          Text(
                            'اضافة للسلة',
                            style: TextStyle(color: Colors.white,),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // primary: Color.fromRGBO(23, 152, 185, 100),
                        primary: Colors.lightBlueAccent,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        minimumSize: Size(100, 40), //////// HERE
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
