import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 0.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 0.5,
              ),
            ),
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
            ),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            suffixIcon: Icon(Icons.sort, color: Colors.black),
          ),
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          maxLines: 1,
          controller: _searchController,
        ),
      ),
    );
  }
}
