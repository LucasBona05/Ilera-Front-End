import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:ilera/app/utils/fade_animation.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Constants.COLORS[1],
        width: width,
        height: height,
        child: PageView(
          controller: _controller,
          children: [
            FadeAnimation(0.01, PageOne()),
            FadeAnimation(0.01, PageTwo()),
            FadeAnimation(0.01, PageThree()),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Constants.COLORS[1],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 190, 0, 0),
          child: Column(
            children: [
              FadeAnimation(0.30, SvgPicture.asset('assets/svg/tela_1.svg')),
              SizedBox(height: height * 0.08),
              FadeAnimation(
                  0.50,
                  Text(
                    "Um aplicativo de bem-estar\nfeito para suas necessidades.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Constants.COLORS[0],
                    ),
                  )),
              SizedBox(height: height * 0.1),
              FadeAnimation(
                  0.70,
                  SizedBox(
                    width: 168,
                    height: 49,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Constants.COLORS[0],
                      textColor: Constants.COLORS[1],
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text("next".toUpperCase(),
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Constants.COLORS[1],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 220, 0, 0),
          child: Column(
            children: [
              FadeAnimation(0.3, SvgPicture.asset('assets/svg/tela_2.svg')),
              SizedBox(height: height * 0.11),
              FadeAnimation(
                  0.5,
                  Text(
                    "Onde você pode desenvolver\ndiversas habilidades e se\nmanter fisicamente ativo.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Constants.COLORS[0],
                    ),
                  )),
              SizedBox(height: height * 0.11),
              FadeAnimation(
                  0.7,
                  SizedBox(
                    width: 168,
                    height: 49,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Constants.COLORS[0],
                      textColor: Constants.COLORS[1],
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text("next".toUpperCase(),
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Constants.COLORS[1],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 190, 0, 0),
          child: Column(
            children: [
              FadeAnimation(0.3, SvgPicture.asset('assets/svg/tela_3.svg')),
              SizedBox(height: height * 0.09),
              FadeAnimation(
                  0.5,
                  Text(
                    "Desenvolvimento pessoal e\nfisico de uma forma nova e\ndescontraída.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Constants.COLORS[0],
                    ),
                  )),
              SizedBox(height: height * 0.12),
              FadeAnimation(
                  0.7,
                  SizedBox(
                    width: 168,
                    height: 49,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Constants.COLORS[0],
                      textColor: Constants.COLORS[1],
                      child: Row(
                        children: [
                          SizedBox(
                            width: 28,
                          ),
                          Text("login".toUpperCase(),
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
