import 'package:Uzdon/model/cart.dart';
import 'package:Uzdon/model/food.dart';
import 'package:Uzdon/screen/cart_screen.dart';
import 'package:Uzdon/screen/checkout_screen.dart';
import 'package:Uzdon/util/badge.dart';
import 'package:Uzdon/util/widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class DetailScreen extends StatefulWidget {
  final Food food;

  const DetailScreen({required this.food});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 70, bottom: 5, right: 20, left: 20),
                  color: Colors.white,
                  child: Image.network(
                    widget.food.foodImage,
                    width: double.infinity,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Color.fromARGB(203, 153, 3, 1),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return CartScreen();
                                  })).then((value) => setState(() {}));
                                },
                                icon: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Color.fromARGB(203, 153, 3, 1),
                                )),
                            cartList.length > 0
                                ? Badge(
                                    numberValue: (cartList.length).toString())
                                : Container()
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Card(
                color: Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.food.foodName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 36),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Text(
                          rupiahCurrencyFormat
                              .format(widget.food.foodPrice),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.white)),
                      SizedBox(height: 20),
                      Text('Description',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white, fontWeight: FontWeight.w500)),
                      SizedBox(height: 8),
                      Text(
                        widget.food.foodDescription,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(height: 177),

                      Container(
                        padding: EdgeInsets.only(top: 20),
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  addToCart(widget.food.foodId, context);
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(14.0),
                                    primary: Color.fromARGB(203, 153, 3, 1)),
                                child: Icon(Icons.add_shopping_cart_outlined)),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      padding: EdgeInsets.all(16.0)),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return CheckoutScreen();
                                    }));
                                  },
                                  child: Text('Buy Now',
                                      style: TextStyle(color: Color.fromARGB(203, 153, 3, 1))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addToCart(foodId, context) {
    bool isItemExist = false;
    if (cartList.firstWhereOrNull((cartItem) => cartItem.foodId == foodId) !=
        null) {
      isItemExist = true;
    }
    if (isItemExist) {
      final snackBar = SnackBar(content: Text('Item already in cart !'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      setState(() {
        cartList.add(Cart(foodId: foodId));
      });
      final snackBar = SnackBar(content: Text('Item added to cart !'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
