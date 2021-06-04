import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {
  final IconData? icon;

  const IconBadge({Key? key, @required this.icon}) : super(key: key);

  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(widget.icon),
        Positioned(
          right: 0.0,
          child: Container(
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            constraints: BoxConstraints(
              minHeight: 13.0,
              maxWidth: 13.0,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 1.0),
              child: Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
