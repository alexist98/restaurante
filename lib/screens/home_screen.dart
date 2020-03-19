import 'package:flutter/material.dart';
import 'package:restaurante/tabs/home_tab.dart';
import 'package:restaurante/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(pageController),
        ),
        Container(color: Colors.red,),
        Container(color: Colors.yellow,),
        Container(color: Colors.green,),
      ],
    );
  }
}
