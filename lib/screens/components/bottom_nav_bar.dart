import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/icons/home.svg")),
          IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/icons/cart.svg")),
          IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/icons/receipt.svg"))
        ],
      ),
    );
  }
}