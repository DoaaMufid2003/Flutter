import 'package:example/products/category.dart';
import 'package:flutter/material.dart';
class ProductWidget extends StatelessWidget {
  final Category category;

  ProductWidget(this.category);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: category.products?.length,
      padding: EdgeInsets.symmetric(horizontal: 10),
      // physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,

        // mainAxisExtent: 120
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueGrey
          ),
          child: Column(
            children: [
              Column(
                  children: [
                    Image.network(
                      category.products![index]?.image ?? '',
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Text(category.products![index]?.name ?? ''),
                    Text('${category.products![index]?.price ?? 0}'),
                    // SizedBox(height: 10),
                    ElevatedButton(
                      child: Text(
                        'اضف الى السلة',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xf721b1b),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        minimumSize: Size(100, 40),
                      ),
                    ),
                  ],
                )

            ],
          ),
        );
      },
    );
  }
}

