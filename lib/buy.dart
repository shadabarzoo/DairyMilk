import 'package:flutter/material.dart';
import 'Catlog_Screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.purple[900],
      ),
      home: CatalogScreen(),
    );
  }
}
