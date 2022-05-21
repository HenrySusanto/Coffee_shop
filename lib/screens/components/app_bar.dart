import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/screens/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




AppBar homeAppBar(BuildContext context){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,

    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {  },
    ),
    title: Center(
      child: Text("Coffee Shop",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    ),

    actions: <Widget>[
      IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/notification.svg")),


    ],


  );
}