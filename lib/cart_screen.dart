import 'package:demo/payment.dart';
import 'package:flutter/material.dart';
import 'cart_total.dart';
import 'package:flutter/widgets.dart';
import 'cart_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple[900],
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("My Order"),backgroundColor: Colors.purple[900],),
        body: Column(
          children: [
            CartProducts(),
            CartTotal(),
            ElevatedButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Payment(),
              ),
            );}, child: Text("Proceed to pay",
            style: TextStyle(
              color: Colors.purple[900]
            ),
            ),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Set the background color to yellow
              ),
            ),
          ],
        ),
      ),
    );
  }
}
