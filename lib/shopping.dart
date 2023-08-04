import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'gift.dart';
import 'profile.dart';

class Shopping extends StatefulWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
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
              bottomNavigationBar: GNav(
                activeColor: Colors.white,
                tabs: [
                  GButton(hoverColor: Colors.grey, icon: Icons.home,iconColor:Colors.yellow,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));}),
                  GButton(hoverColor: Colors.grey,icon: Icons.card_giftcard,iconColor:Colors.yellow,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Gift()));}),
                  GButton(hoverColor: Colors.grey,icon: Icons.add_shopping_cart,iconColor:Colors.yellow,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Shopping()));}),
                  GButton(hoverColor: Colors.grey,icon: Icons.person,iconColor:Colors.yellow,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));})
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
                      Center(
                        child: Text(
                          ' Single Bar',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb1.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' CADBURY DAIRY MILK(30% less sugar)',textAlign: TextAlign.center,
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
                                    Text(" 4.1",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb2.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Big Taste Peanut Caramel Crisp',textAlign: TextAlign.center,
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
                                    Text(" 4.3",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb3.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Big Taste Toffee Wholenut',textAlign: TextAlign.center,
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
                                    Text(" 4.6",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb4.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' CADBURY DAIRY MILK',textAlign: TextAlign.center,
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
                                    Text(" 4.0",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb5.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Caramel',textAlign: TextAlign.center,
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
                                    Text(" 4.7",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb6.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Freddo',textAlign: TextAlign.center,
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
                                    Text(" 3.8",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb7.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Freddo Caramel',textAlign: TextAlign.center,
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
                                    Text(" 3.9",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb8.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Fruiy & Nut',textAlign: TextAlign.center,
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
                                    Text(" 4.3",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb9.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Marvellous Cretion',textAlign: TextAlign.center,
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
                                    Text(" 4.6",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb10.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Oreo',textAlign: TextAlign.center,
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
                                    Text(" 4.5",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb11.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Whole Nut',textAlign: TextAlign.center,
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
                                    Text(" 4.2",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/sb12.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Brunch Bar',textAlign: TextAlign.center,
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
                                    Text(" 4.0",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          ' Block',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl1.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Bournville',textAlign: TextAlign.center,
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
                                    Text(" 4.5",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl2.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Tiffin',textAlign: TextAlign.center,
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
                                    Text(" 4.1",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl3.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Fruit & Nut',textAlign: TextAlign.center,
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
                                    Text(" 4.5",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl4.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Marvellous Creation',textAlign: TextAlign.center,
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
                                    Text(" 4.9",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl5.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Dairy Milk (30% Less Sugar)',textAlign: TextAlign.center,
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
                                    Text(" 4.3",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl6.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Big Taste',textAlign: TextAlign.center,
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
                                    Text(" 4.0",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl7.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Big Taste Caramel ',textAlign: TextAlign.center,
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
                                    Text(" 4.0",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl8.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Dairy Milk Triple Choc Sensation',textAlign: TextAlign.center,
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
                                    Text(" 4.1",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl9.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Medley',textAlign: TextAlign.center,
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
                                    Text(" 4.5",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl10.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Daim',textAlign: TextAlign.center,
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
                                    Text(" 4.0",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl11.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Choca Latte',textAlign: TextAlign.center,
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
                                    Text(" 3.5",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bl12.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Dairy Milk',textAlign: TextAlign.center,
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
                                    Text(" 3.8",style: TextStyle(
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
                                        '  ₹ 20',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Text(
                          ' Bags',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag1.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Buttons',textAlign: TextAlign.center,
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
                                    Text(" 4.1",style: TextStyle(
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
                                        '  ₹ 10',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag2.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Echlairs Velvet',textAlign: TextAlign.center,
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
                                    Text(" 4.3",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag3.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Boost Bites',textAlign: TextAlign.center,
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
                                    Text(" 4.6",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag4.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Giant Buttons',textAlign: TextAlign.center,
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
                                    Text(" 4.3",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag5.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Freddo White Treasure',textAlign: TextAlign.center,
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
                                    Text(" 4.0",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag6.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Caramel Nibbles',textAlign: TextAlign.center,
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
                                    Text(" 4.3",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag7.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Freddo Faces',textAlign: TextAlign.center,
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
                                    Text(" 3.8",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag8.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Mini Bars',textAlign: TextAlign.center,
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
                                    Text(" 4.3",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag9.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Oreo Bites',textAlign: TextAlign.center,
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
                                    Text(" 4.4",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag10.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Mini Eggs',textAlign: TextAlign.center,
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
                                    Text(" 4.9",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag11.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Picnic Bites',textAlign: TextAlign.center,
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
                                    Text(" 4.8",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Container(
                            width: 280,
                            height: 330,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bag12.png',
                                  width: 200,
                                  height: 180,
                                ),
                                Center(
                                  child: Text(
                                    ' Twirl Bites',textAlign: TextAlign.center,
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
                                    Text(" 4.7",style: TextStyle(
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
                                        '  ₹ 60',
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
                                        child: Center(child: Text('Buy Now')),),
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
            )
        )
    );
  }
}
