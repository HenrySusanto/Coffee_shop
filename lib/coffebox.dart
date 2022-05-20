import 'package:coffee_shop/styles.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class CoffeBox extends StatelessWidget {
  final String url;

  CoffeBox(this.url);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle.clone()..background.image(url: url, fit: BoxFit.cover)
    );
  }
}
