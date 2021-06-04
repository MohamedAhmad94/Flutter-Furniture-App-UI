import 'package:flutter/material.dart';
import 'package:flutter_furniture/models/product.dart';
import 'package:flutter_furniture/screens/details.dart';

class RoomItem extends StatelessWidget {
  final Room? room;
  const RoomItem({Key? key, this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/details',
            arguments: RoomDetailsArguments(room: room),
          );
        },
        child: Container(
          height: 275.0,
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${room!.title}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "${room!.image}",
                  height: 240.0,
                  width: 280.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
