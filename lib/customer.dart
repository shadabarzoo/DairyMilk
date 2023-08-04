import 'package:flutter/material.dart';

class Customer extends StatelessWidget {
  const Customer({Key? key}) : super(key: key);

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
                      Container(
                          width: 350,
                          height: 515,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              children:[
                                Center(
                                  child: Text("Contact Us",style: Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.yellow,
                                    fontSize: 30,
                                  ),),
                                ),
                                SizedBox(height: 20,),
                                Center(
                                  child: Text("If you need to get in touch, don’t hesitate to contact our consumer services team. We love hearing your valuable feedback about our products.",
                                    style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.white,
                                    ),),
                                ),
                                SizedBox(height: 20,),
                                Center(
                                  child: Text("We also get many requests for information about our company. If you would like to comment on our products, you can contact consumer services directly.",
                                    style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.white,
                                    ),),
                                ),
                                SizedBox(height: 20,),
                                Center(
                                  child: Text("Toll Free Number",
                                    style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.yellowAccent,
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text("1800 250 260",
                                    style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.white,
                                    ),),
                                ),
                                SizedBox(height: 20,),
                                Center(
                                  child: Text("Mail",
                                    style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.yellowAccent,
                                    ),),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text("Consumer Advisory Service,PO Box 1673,Melbourne,VIC. 3001,AUSTRALIA",
                                    style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.white,
                                    ),),
                                ),
                                SizedBox(height: 40,),
                              ]
                          )
                      ),
                      Center(
                        child: Image.asset(
                          "images/glass.webp",
                          height: 200,
                          width: 280,
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