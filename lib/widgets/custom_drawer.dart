import 'package:flutter/material.dart';
import 'package:restaurante/screens/login_screen.dart';
import 'package:restaurante/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    Widget buildDrawerBack() =>
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                //cores tela drawer
                Color.fromARGB(255, 154, 188, 241),
                Colors.white
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        );

    return Drawer(
      child: Stack(
        children: <Widget>[
          buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Text(
                        "Erechim\nLanches",
                        style: TextStyle(
                            fontSize: 48.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Olá, ",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            child: Text(
                              "Entre ou cadastre-se",
                              style: TextStyle(
                                  color: Theme
                                      .of(context)
                                      .primaryColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerTitle(Icons.home, "Inicio", pageController, 0),
              DrawerTitle(Icons.list, "Produtos", pageController, 1),
              DrawerTitle(
                  Icons.location_on, "Encontre uma loja", pageController, 2),
              DrawerTitle(
                  Icons.playlist_add_check, "Meus Pedidos", pageController, 3),
            ],
          )
        ],
      ),
    );
  }
}
