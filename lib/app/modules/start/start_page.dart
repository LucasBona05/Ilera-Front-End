import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/start/start_controller.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:mobx/mobx.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageViewController,
        children: [
          Container(color: Colors.black),
          Container(),
          Container(color: Colors.red),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              elevation: 15,
              iconSize: 40,
              backgroundColor: Constants.COLORS[5],
              selectedItemColor: Constants.COLORS[0],
              currentIndex: controller.pageViewController?.page?.round() ?? 0,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              unselectedIconTheme: IconThemeData(opacity: 0.6),
              selectedIconTheme: IconThemeData(opacity: 1),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Busca",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Perfil",
                ),
              ],
              onTap: (index) {
                setState(() {
                  controller.pageViewController.jumpToPage(index);
                });
              },
            );
          }),
    );
  }
}
