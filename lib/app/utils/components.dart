import 'package:flutter/material.dart';
import 'package:simple_code/simple_code.dart';

import 'constants.dart';

class Conponents {
  ///AppBar
  static AppBar ileraAppBar(String text, BuildContext context) {
    return AppBar(
      backgroundColor: Constants.COLORS[5],
      centerTitle: true,
      title: Text(
        '$text'.toUpperCase(),
        style: TextStyle(
            color: Constants.COLORS[0], fontFamily: 'Flood', fontSize: sz(35)),
      ),
    );
  }

  static Drawer ileraMenuDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Constants.COLORS[0], fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Constants.COLORS[5],
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/png/tela_2.png'))),
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(
              Icons.border_color,
              color: Constants.COLORS[0],
            ),
            title: Text('Editar perfil',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Constants.COLORS[0]),
            title: Text('Gerenciar instrutores',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.app_registration, color: Constants.COLORS[0]),
            title: Text('Alterar plano',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.question_answer, color: Constants.COLORS[0]),
            title: Text('Perguntas recorrentes',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Constants.COLORS[0]),
            title: Text('Sair', style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }

  //BottomAppBar
  static BottomAppBar ileraBottomAppBar(
      Function onTap, Color one, Color two, Color three, BuildContext context) {
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
                onTap: onTap,
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
