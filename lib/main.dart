import 'package:flutter/material.dart';
import 'package:recipe_api/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Colors.white,
          ))),
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
