import 'package:flutter/material.dart';
import '../../constants.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: ksecondaryColor.withOpacity(0.32),
          )),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(Icons.search),
            hintText: "Search Here"
        ),
      ),
    );
  }
}