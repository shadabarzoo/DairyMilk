import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

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
                        child: Text(" You have not selected anything as Wishlist",style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text(" Please select items in Wishlist to see here",style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                      ),
                      SizedBox(height: 100,),
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset("images/empty.png",width: 300),
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