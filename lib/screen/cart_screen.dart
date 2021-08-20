import 'package:Uzdon/model/cart.dart';
import 'package:Uzdon/model/food.dart';
import 'package:Uzdon/screen/checkout_screen.dart';
import 'package:Uzdon/util/widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isFbCheckoutVisible = false;

  @override
  Widget build(BuildContext context) {
    if (cartList.length > 0) {
      isFbCheckoutVisible = true;
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(203, 153, 3, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFbCheckoutVisible,
        child: Container(
          padding: EdgeInsets.only(left: 16),
          margin: EdgeInsets.only(left: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(203, 153, 3, 1)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [Text('Checkout Here', ), Icon(Icons.arrow_forward_ios)],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: cartList.length > 0
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    var food = findFood(cartList[index]);
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              child: Container(
                                child: Image.network(food.foodImage),
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(color: Colors.white12),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food.foodName,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(rupiahCurrencyFormat
                                      .format(food.foodPrice))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                                onPressed: () {
                                  deleteItemCart(food.foodId);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Color.fromARGB(203, 153, 3, 1),
                                )),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: cartList.length,
                ),
              )
            : Center(child: Text('Empty cart, please add some item')),
      ),
    );
  }

  Food findFood(Cart cartItem) {
    return foodList.firstWhere((food) => food.foodId == cartItem.foodId);
  }

  deleteItemCart(int foodId) {
    setState(() {
      cartList.removeWhere((cartItem) => cartItem.foodId == foodId);
      if (cartList.length == 0) {}
    });
  }
}
