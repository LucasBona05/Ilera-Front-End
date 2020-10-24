import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Constants {
  static String API_URL = 'https://deixedeserfrango.herokuapp.com';

  static List<Color> COLORS = [
    ///Branco - 0
    Color.fromRGBO(255, 252, 242, 1),

    ///Verde - 1
    Color.fromRGBO(29, 60, 64, 1),

    ///Marrom Forte - 2
    Color.fromRGBO(114, 59, 46, 1),

    ///Marrom Fraco - 3
    Color.fromRGBO(190, 82, 43, 1),

    ///Laranja Forte - 4
    Color.fromRGBO(241, 86, 29, 1),

    ///Laranja Fraco - 5
    Color.fromRGBO(241, 119, 46, 1),

    ///Marrom Forte - 70% Opacidade - 6
    Color.fromRGBO(114, 59, 46, 0.7),
  ];
}
