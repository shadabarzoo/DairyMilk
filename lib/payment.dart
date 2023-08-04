import 'package:demo/cart_total.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _selectedOption = '';

  void _placeOrder(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order Placed'),
          content: Text('Your order has been placed successfully.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple[900],
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Payment"),backgroundColor: Colors.purple[900],),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text("Please select any mode of payment:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
            ),
            SizedBox(height: 10,),
            RadioListTile(
              title: Text('Pay online',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              value: 'Option 1',
              activeColor: Colors.white,
              groupValue: _selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue!;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset("images/PhonePeQR.jpeg",height: 200,width: 200,),
              ),
            ),
            RadioListTile(
              title: Text('Cash on Delivery',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),),
              value: 'Option 2',
              groupValue: _selectedOption,
              activeColor: Colors.white,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue!;
                });
              },
            ),
            SizedBox(height: 200,),
            CartTotal(),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){_placeOrder(context);},
              child: Text("Order Now",style: TextStyle(
              color: Colors.purple[900]
              ),),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Set the background color to yellow
              ),),
          ],
        ),
      ),
    );
  }
}
