import 'package:badges/badges.dart';
import 'package:coffee_shop/screens/components/bottom_nav_bar.dart';
import 'package:coffee_shop/screens/components/discount_card.dart';
import 'package:coffee_shop/screens/components/item_list.dart';
import 'package:coffee_shop/screens/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_provider.dart';
import 'cart_screen.dart';

class MenuDetail extends StatelessWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,

          leading: IconButton(
            icon: Icon(Icons.menu,color: Colors.black,),
            onPressed: () {  },
          ),
          title: Text("Coffee Shop",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),


          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  CartScreen()));
              },
              child: Center(
                child: Badge(
                  badgeContent: Consumer<CartProvider>(
                    builder: (context, value, child){
                      return Text(value.getCounter().toString(),
                          style: TextStyle(color: Colors.white));
                    },
                  ),
                  animationDuration: Duration(microseconds: 300),
                  child: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(width: 20)
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
        body: SafeArea(
          child: Column(
            children: const <Widget> [
              SearchBox(),
              ItemList(),
              DiscountCard(),
            ],
          ),
        )
    );
  }
}