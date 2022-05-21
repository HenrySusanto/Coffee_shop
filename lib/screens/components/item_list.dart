import 'package:coffee_shop/details/detail_screen.dart';
import 'package:flutter/material.dart';
import '../../details/detail_screen_2.dart';
import '../../details/detailScreen3.dart';
import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/coffee1.svg",
            title: 'Hot Coffee',
            presss: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>detailScreen()));
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/coffee2.svg",
            title: 'Hot Coffee With Foam',
            presss: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>detailScreen2()));},
          ),
          ItemCard(
            svgSrc: "assets/icons/coffee3.svg",
            title: 'Iced Coffee',
            presss: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>detailScreen3()));},
          ),
        ],
      ),
    );
  }
}
