import 'package:flutter/material.dart';
import 'package:simple_code/simple_code.dart';

import 'constants.dart';

class Conponents {
  ///AppBar
  static AppBar ileraAppBar(
      String text, BuildContext context, List<Widget> actions) {
    return AppBar(
      actions: actions,
      backgroundColor: Constants.COLORS[5],
      centerTitle: true,
      title: Text(
        '$text'.toUpperCase(),
        style: TextStyle(
            color: Constants.COLORS[0], fontFamily: 'Flood', fontSize: sz(35)),
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
      height: hsz(70),
      color: Constants.COLORS[5],
      child: ListView.separated(
        itemCount: items.length + 1,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return index == 0 ? Container() : items[index - 1];
        },
        separatorBuilder: (_, i) {
          return SizedBox(
            width: wsz(60),
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
            size: sz(40),
          ),
        ),
      ),
    );
  }
}
