import 'package:demo/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/widgets.dart';
import 'catalog_products.dart';
import 'gift.dart';
import 'home.dart';
import 'profile.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  int _currentIndex = 2;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CatalogScreen()),
        );
      }
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Gift()),
        );
      }
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple[900],
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.purple[900],
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Gift',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'Shopping Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      height: 150,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(280, 30, 0, 0),
                    child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));},
                      icon: Icon(Icons.shopping_bag_outlined,size: 50,),color: Colors.white,),
                  ),
                ],
              ),
              CatalogProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
