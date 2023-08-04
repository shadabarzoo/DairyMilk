import 'package:demo/Catlog_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'shopping.dart';
import 'profile.dart';

class Gift extends StatefulWidget {
  const Gift({Key? key}) : super(key: key);

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  int _currentIndex = 1;

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
                unselectedItemColor: Colors.grey,
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
                    width: 400,
                      ),
                    ),
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset("images/gift.jpg",width: 300),
                        ),
                      ),
                      Center(
                        child: Text(" Send gifts to make your relation more beautiful",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text("Keep spreading love with DairyMilk",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Container(
                          width: 330,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/gift1.webp',
                                width: 200,
                                height: 200,
                              ),
                              Center(
                                child: Text(
                                  ' Personalised Mothers Day  Chocolate Gift Box',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Text(" No review yet",style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '  ₹ 600',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[900], // Background color
                                    ),
                                      child: Center(child: Text('Coming Soon')),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Container(
                          width: 330,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/birthday.webp',
                                width: 200,
                                height: 200,
                              ),
                              Center(
                                child: Text(
                                  ' Personalised Birthday Tin Box',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Text(" No review yet",style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '  ₹ 1000',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[900], // Background color
                                    ),
                                      child: Center(child: Text('Coming Soon')),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Container(
                          width: 330,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/potli.webp',
                                width: 200,
                                height: 200,
                              ),
                              Center(
                                child: Text(
                                  ' Personalised Mothers day Potli with chocolates and Silk Bar',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Text(" No review yet",style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '  ₹ 900',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[900], // Background color
                                    ),
                                      child: Center(child: Text('Coming Soon')),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Container(
                          width: 330,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/pillow.webp',
                                width: 200,
                                height: 200,
                              ),
                              Center(
                                child: Text(
                                  ' Personalised Women’s day Silk Chocolate Bar + Cushion',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Text(" No review yet",style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '  ₹ 850',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[900], // Background color
                                    ),
                                      child: Center(child: Text('Coming Soon')),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Container(
                          width: 330,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/valentine.webp',
                                width: 200,
                                height: 200,
                              ),
                              Center(
                                child: Text(
                                  ' Personalised 7 Day Valentines pack with 7 customised bars in gift box',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Text(" No review yet",style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '  ₹ 1000',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[900], // Background color
                                    ),
                                      child: Center(child: Text('Coming Soon')),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Container(
                          width: 330,
                          height: 380,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/teddy.webp',
                                width: 200,
                                height: 200,
                              ),
                              Center(
                                child: Text(
                                  ' Personalised Valentines surprise box with Teddy & Dairy Milk chocolates',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Text(" No review yet",style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '  ₹ 1200',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[900], // Background color
                                    ),
                                      child: Center(child: Text('Coming Soon')),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Container(
                          width: 330,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/largeSilk.webp',
                                width: 200,
                                height: 200,
                              ),
                              Center(
                                child: Text(
                                  ' Personalised Large Silk chocolate Bar + Cadbury Dairy Milk Bites',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ),
                                  Text(" No reveiw yet",style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '  ₹ 900',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[900], // Background color
                                    ),
                                      child: Center(child: Text('Coming Soon')),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                            child: Container(
                              width: 330,
                              height: 400,
                              decoration: BoxDecoration(
                                color: Colors.purple[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/frame.webp',
                                    width: 200,
                                    height: 200,
                                  ),
                                  Center(
                                    child: Text(
                                      ' Personalised Valentines Cadbury Studio Signature Pralines- Brownie Aux Noix with Photoframe',textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                      ),
                                      Text(" No reveiw yet",style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 16,
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Center(
                                        child: Text(
                                          '  ₹ 950',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                          primary: Colors.purple[900], // Background color
                                        ),
                                          child: Center(child: Text('Coming Soon')),),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ),
                    ]
                  ),
                ),
            ),
        )
    );
  }
}