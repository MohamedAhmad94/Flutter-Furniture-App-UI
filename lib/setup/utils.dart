import 'package:flutter/material.dart';

class Utils {
  // Theme Colors
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.orange;
  static Color darkAccent = Colors.orangeAccent;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: lightBG,
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      centerTitle: true,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBG,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      centerTitle: true,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  // static List<Map<String, dynamic>> furnitureItems = [
  //   {
  //     "name": "Living Room",
  //     "image": "assets/images/1.jpeg",
  //     "description":
  //         "A mix of traditional design and warm wood creates a welcoming and snug living room.",
  //     "price": "\$600",
  //     "isPopular": "true",
  //   },
  //   {
  //     "name": "Dining Room 1",
  //     "image": "assets/images/2.jpeg",
  //     "description": "Complete dining room desined for wide spaces.",
  //     "price": "\$400",
  //     "isPopular": "true",
  //   },
  //   {
  //     "name": "Bedroom",
  //     "image": "assets/images/3.jpeg",
  //     "description":
  //         "Balanced bedroom with a desirable mix of style and storage.",
  //     "price": "\$650",
  //     "isPopular": "true",
  //   },
  //   {
  //     "name": "Dining Room 2",
  //     "image": "assets/images/4.jpeg",
  //     "description": "Stylish dining room desined to suite limimted spaces.",
  //     "price": "\$300",
  //     "isPopular": "false",
  //   },
  //   {
  //     "name": "Dining Room 3",
  //     "image": "assets/images/5.jpeg",
  //     "description": "Aesthetic dining room desined to suite limimted spaces. ",
  //     "price": "\$400",
  //     "isPopular": "false",
  //   },
  // ];
}
