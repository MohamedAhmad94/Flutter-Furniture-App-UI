import 'package:flutter/material.dart';
import 'package:flutter_furniture/models/product.dart';
import 'package:flutter_furniture/screens/details.dart';

class ProductItem extends StatelessWidget {
  final Room? room;
  const ProductItem({Key? key, this.room}) : super(key: key);

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
          height: 140.0,
          width: 140.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              "${room!.image}",
              height: 140.0,
              width: 140.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
