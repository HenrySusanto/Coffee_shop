import 'package:flutter/material.dart';

class Item_image extends StatelessWidget {
  final String imgSrc;

  const Item_image({
    Key? key,
    required this.imgSrc,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Image.asset(
      imgSrc,
      height: size.height * 0.35,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}