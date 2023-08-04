import 'package:demo/Catlog_Screen.dart';
import 'package:flutter/material.dart';
import 'gift.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

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
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple[900],
        ),
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 6,
            child: Scaffold(
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
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "images/logo.png",
                          height: 200,
                          width: 200,
                        ),
                      ),
                      Center(
                        child: Text("Welcome to Cadbury Dairy Milk",style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text("We value your taste with love",style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("images/dm1.jpg",width: 300),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text("Our classic bar of deliciously creamy Cadbury Dairy Milk chocolate, made with fresh milk from the British Isles and Ireland.",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Text(" A mouthful of “mmmm” in every piece!",style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset("images/cocoa.jpg",width: 300),
                        ),
                      ),
                      Center(
                        child: Text("100% sustainably sourced cocoa",style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text("We value your taste",style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                      ),
                    ],
                  ),
                )
            )
        )
    );
  }
}