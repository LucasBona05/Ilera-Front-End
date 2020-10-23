import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ilera/app/modules/intro/intro_page.dart';
import 'package:ilera/app/utils/fade_animation.dart';

import '../../utils/constants.dart';
import '../login/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => IntroPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Constants.COLORS[4],
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            color: Constants.COLORS[4],
          ),
          Center(
              child:
                  FadeAnimation(0.70, Image.asset('assets/png/logo_nome.png'))),
        ],
      ),
    );
  }
}
