import 'package:flutter/material.dart';
import 'package:flutter_furniture/screens/details.dart';
import 'package:flutter_furniture/screens/home.dart';
import 'package:flutter_furniture/setup/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Furniture',
      debugShowCheckedModeBanner: false,
      theme: Utils.lightTheme,
      darkTheme: Utils.darkTheme,
      initialRoute: '/home',
      routes: {
        Home.routeName: (context) => Home(),
        Details.routeName: (context) => Details(),
      },
    );
  }
}
