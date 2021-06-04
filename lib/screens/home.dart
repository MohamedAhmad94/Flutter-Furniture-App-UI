import 'package:flutter/material.dart';
import 'package:flutter_furniture/models/product.dart';
import 'package:flutter_furniture/widgets/badge.dart';
import 'package:flutter_furniture/widgets/product_item.dart';
import 'package:flutter_furniture/widgets/room_item.dart';
import 'package:flutter_furniture/widgets/search_card.dart';

class Home extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Room> furnitureItems = [
    Room(
      id: "1",
      title: "Living Room",
      image: "assets/images/1.png",
      description:
          "A mix of traditional design and warm wood creates a welcoming and snug living room.",
      price: "\$600",
      isPopular: true,
    ),
    Room(
      id: "2",
      title: "Dining Room 1",
      image: "assets/images/2.png",
      description: "Complete dining room desined for wide spaces.",
      price: "\$400",
      isPopular: true,
    ),
    Room(
      id: "3",
      title: "Bedroom",
      image: "assets/images/3.png",
      description:
          "Balanced bedroom with a desirable mix of style and storage.",
      price: "\$650",
      isPopular: true,
    ),
    Room(
      id: "4",
      title: "Dining Room 2",
      image: "assets/images/4.png",
      description: "Stylish dining room desined to suite limimted spaces.",
      price: "\$300",
      isPopular: false,
    ),
    Room(
      id: "5",
      title: "Dining Room 3",
      image: "assets/images/5.png",
      description: "Aesthetic dining room desined to suite limimted spaces.",
      price: "\$400",
      isPopular: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: IconBadge(icon: Icons.shopping_cart),
          ),
          SizedBox(width: 20.0),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              "What are you \nlooking for?",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SearchCard(),
          ),
          SizedBox(height: 30.0),
          Container(
            height: 280.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: furnitureItems.length,
                itemBuilder: (context, index) {
                  return RoomItem(room: furnitureItems[index]);
                }),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Products",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 140.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: furnitureItems.length,
              itemBuilder: (context, index) {
                if (furnitureItems[index].isPopular == true) {
                  return ProductItem(
                    room: furnitureItems[index],
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
