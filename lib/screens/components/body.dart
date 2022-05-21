import 'package:coffee_shop/screens/components/search_box.dart';
import 'package:flutter/material.dart';
import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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


