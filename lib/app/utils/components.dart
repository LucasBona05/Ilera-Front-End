import 'package:flutter/material.dart';
import 'package:simple_code/simple_code.dart';

import 'constants.dart';

class Conponents {
  ///AppBar
  static AppBar ileraAppBar(String text, BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        //TODO COLOCAR MENU
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.menu,
          color: Constants.COLORS[0],
        ),
      ),
      backgroundColor: Constants.COLORS[5],
      title: Text(
        '$text'.toUpperCase(),
        style: TextStyle(
            color: Constants.COLORS[0], fontFamily: 'Flood', fontSize: sz(35)),
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
              padding: const EdgeInsets.symmetric(horizontal: 27),
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
                  size: sz(60),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: GestureDetector(
                onTap: () {
                  print("CLICADO");
                  if (two != selected) {
                    Navigator.pushNamed(context, "/search");
                  }
                },
                child: Icon(
                  Icons.search,
                  color: two,
                  size: sz(60),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: GestureDetector(
                onTap: () {
                  print("CLICADO");
                  if (three != selected) {
                    Navigator.pushNamed(context, "/aluno");
                  }
                },
                child: Icon(
                  Icons.person,
                  color: three,
                  size: sz(60),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BotaoPerfilInstrutor extends StatelessWidget {
  final Function onTap;
  final double height;
  final double width;
  final String text;
  final Color color;
  const BotaoPerfilInstrutor({
    Key key,
    this.onTap,
    this.height,
    this.width,
    this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[900],
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(
              color: Constants.COLORS[0],
              fontSize: sz(17),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavigatorBarWidget extends StatelessWidget {
  final List<BottomNavBarItemWidget> items;
  const BottomNavigatorBarWidget({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hsz(80),
      color: Constants.COLORS[3],
      child: ListView.separated(
        itemCount: items.length + 1,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return index == 0 ? Container() : items[index - 1];
        },
        separatorBuilder: (_, i) {
          return SizedBox(
            width: wsz(25),
          );
        },
      ),
    );
  }
}

class BottomNavBarItemWidget extends StatelessWidget {
  final IconData icon;
  final bool isActivated;
  final Function onPressed;
  final Color color;

  const BottomNavBarItemWidget(
      {Key key, this.icon, this.isActivated, this.onPressed, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          child: Icon(
            icon,
            color: isActivated ? this.color : Constants.COLORS[6],
          ),
        ),
      ),
    );
  }
}
