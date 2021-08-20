import 'package:Uzdon/screen/cart_screen.dart';
import 'package:Uzdon/screen/checkout_screen.dart';
import 'package:Uzdon/screen/detail_screen.dart';
import 'package:Uzdon/model/food.dart';
import 'package:Uzdon/screen/info_screen.dart';
import 'package:Uzdon/util/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(203, 153, 3, 1),
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InfoScreen();
              }));
            }),
        title: Text(
          'Uzdon',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CartScreen();
              }));
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(left: 5, right: 5, top: 5),
        child: Material(
          color: Colors.transparent,
          child: Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: foodList.map((food) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(food: food);
                    }));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        )),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 12, top: 5, right: 12, bottom: 5),
                            child: Image.network(food.foodImage),
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4, left: 4),
                        child: Text(
                          food.foodName,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4, left: 4),
                        child: Text(
                          rupiahCurrencyFormat.format(food.foodPrice),
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
