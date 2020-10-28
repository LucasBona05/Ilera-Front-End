import 'package:flutter/material.dart';

import 'constants.dart';

class Conponents {
  ///AppBar
  static AppBar ileraAppBar(String text) {
    return AppBar(
      leading: GestureDetector(
        //TODO COLOCAR MENU
        onTap: () {},
        child: Icon(
          Icons.menu,
          color: Constants.COLORS[0],
        ),
      ),
      backgroundColor: Constants.COLORS[5],
      title: Text(
        '$text'.toUpperCase(),
        style: TextStyle(
            color: Constants.COLORS[0], fontFamily: 'Flood', fontSize: 35),
      ),
      automaticallyImplyLeading: false,
    );
  }

  //BottomAppBar
  static BottomAppBar ileraBottomAppBar(
      Color one, Color two, Color three, BuildContext context) {
    Color selected = Constants.COLORS[2];
    return BottomAppBar(
      color: Constants.COLORS[5],
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: GestureDetector(
                onTap: () {
                  print("CLICADO");
                  if (one != selected) {
                    Navigator.pushNamed(context, "/home");
                  }
                },
                child: Icon(
                  Icons.home,
                  color: one,
                  size: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: GestureDetector(
                onTap: () {
                  print("CLICADO");
                  // if (two != selected) {
                  //   Navigator.pushNamed(context, "/busca");
                  // }
                },
                child: Icon(
                  Icons.search,
                  color: two,
                  size: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: GestureDetector(
                onTap: () {
                  print("CLICADO");
                  // if (three != selected) {
                  //   Navigator.pushNamed(context, "/perfil");
                  // }
                },
                child: Icon(
                  Icons.person,
                  color: three,
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
