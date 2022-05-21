import 'package:coffee_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../screens/home_screen.dart';
import 'components/item_image.dart';


class detailScreen3 extends StatelessWidget {
  const detailScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()),);
          },

        ),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/bookmark.svg"),)
        ],
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Item_image(
          imgSrc: ("assets/images/icedcoffee.jpg"),
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: <Widget>[
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Iced Coffee ",style: Theme.of(context).textTheme.headline6,),
                  ],
                ),
                ),
                Container(

                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  height: 66,
                  width: 55,
                  color: kPrimaryColor,
                  child: Text("\$7",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
          ),
          const Text("This artistic expression first became popular in the 1980s thanks to modern espresso machines that create a key ingredient… microfoam",
            style: TextStyle(height: 1.2),
          ),
          SizedBox(height: size.height * 0.1 ,),
          Container(
            // padding: EdgeInsets.all(20),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Text("Order Now",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
              )

          )
        ],
      ),
    );
  }
}


