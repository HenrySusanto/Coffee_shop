import 'package:coffee_shop/screens/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/bottom_nav_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: homeAppBar(context),
        bottomNavigationBar: const BottomNavBar(),
        body: const Body());
  }
  }






