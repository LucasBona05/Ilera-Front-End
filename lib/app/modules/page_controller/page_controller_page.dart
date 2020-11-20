import 'package:flutter/material.dart';
import 'package:ilera/app/modules/aluno_perfil/aluno_page.dart';
import 'package:ilera/app/modules/home/home_page.dart';
import 'package:ilera/app/modules/search/search_page.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:ilera/app/utils/constants.dart';

class PageController extends StatefulWidget {
  @override
  _PageControllerState createState() => _PageControllerState();
}

class _PageControllerState extends State<PageController> {
  List<bool> bottomNavBarPosition = [true, false, false, false, false];
  int currentBottomNavBarPosition = 0;

  interactBottomNavBar(int position) {
    if (currentBottomNavBarPosition != position) {
      setState(() {
        bottomNavBarPosition[currentBottomNavBarPosition] =
            !bottomNavBarPosition[currentBottomNavBarPosition];
        currentBottomNavBarPosition = position;
        bottomNavBarPosition[currentBottomNavBarPosition] =
            !bottomNavBarPosition[currentBottomNavBarPosition];
        print(bottomNavBarPosition);
        changeBodyUI(position);
      });
    } else {
      print('VALORES IGUAIS');
    }
  }

  Widget body = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavigatorBarWidget(
        items: [
          new BottomNavBarItemWidget(
            color: Constants.COLORS[0],
            icon: Icons.home,
            isActivated: bottomNavBarPosition[0],
            onPressed: () {
              interactBottomNavBar(0);
            },
          ),
          new BottomNavBarItemWidget(
            color: Constants.COLORS[0],
            icon: Icons.search,
            isActivated: bottomNavBarPosition[1],
            onPressed: () {
              interactBottomNavBar(1);
            },
          ),
          new BottomNavBarItemWidget(
            color: Constants.COLORS[0],
            icon: Icons.person,
            isActivated: bottomNavBarPosition[2],
            onPressed: () {
              interactBottomNavBar(2);
            },
          )
        ],
      ),
    );
  }

  void changeBodyUI(int position) {
    setState(() {
      if (position == 0)
        body = HomePage();
      else if (position == 1) {
        body = SearchPage();
      } else if (position == 2) {
        body = AlunoPage();
      }
    });
  }
}
