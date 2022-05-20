import 'package:coffee_shop/screens/components/search_box.dart';
import 'package:flutter/material.dart';
import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: const <Widget>[
          SearchBox(),
          ItemList(),
          DiscountCard()],
      ),
    );
  }
}

