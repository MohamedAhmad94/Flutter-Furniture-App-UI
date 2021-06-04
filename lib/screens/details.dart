import 'package:flutter/material.dart';
import 'package:flutter_furniture/models/product.dart';
import 'package:flutter_furniture/widgets/badge.dart';

class Details extends StatefulWidget {
  static String routeName = '/details';

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    final RoomDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as RoomDetailsArguments;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: IconBadge(icon: Icons.shopping_cart),
          ),
          SizedBox(width: 20.0),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: [
              SizedBox(height: 10.0),
              Container(
                height: 240.0,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "${arguments.room!.image}}",
                        height: 240.0,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: -10.0,
                      bottom: 3.0,
                      child: RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            pressed = !pressed;
                          });
                        },
                        fillColor: Colors.white,
                        shape: CircleBorder(),
                        elevation: 4.0,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            pressed ? Icons.favorite : Icons.favorite_border,
                            color: Theme.of(context).accentColor,
                            size: 17.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(height: 20.0),
              Text(
                "${arguments.room!.title}",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "${arguments.room!.price}",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "${arguments.room!.description}",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
              ),
              SizedBox(height: 20.0),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Theme.of(context).accentColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange[200]!,
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoomDetailsArguments {
  final Room? room;
  RoomDetailsArguments({@required this.room});
}
