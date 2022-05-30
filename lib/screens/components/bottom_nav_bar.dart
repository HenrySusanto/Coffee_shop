import 'package:coffee_shop/screens/components/item_list.dart';
import 'package:coffee_shop/screens/components/receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../details/detailScreen3.dart';
import '../../menu_detail.dart';
import '../../product_list.dart';
import '../home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -7),
              blurRadius: 10,
              color: const Color(0xFF6DAED9).withOpacity(0.5),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(onPressed: ()
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return HomeScreen();
          }));
          },
              icon: SvgPicture.asset("assets/icons/home.svg"),tooltip: 'Home'),
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return MenuDetail();
            }));
          },
              icon: SvgPicture.asset("assets/icons/cart.svg")),
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const Receipt();
            }));
          },
              icon: SvgPicture.asset("assets/icons/receipt.svg"))
        ],
      ),
    );
  }
}