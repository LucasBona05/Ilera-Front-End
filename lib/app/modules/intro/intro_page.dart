import 'package:flutter/material.dart';
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
            FadeAnimation(
              0.01,
              PageOne(
                onPressed: () {
                  _controller.animateToPage(
                    1,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.bounceInOut,
                  );
                },
              ),
            ),
            FadeAnimation(
              0.01,
              PageTwo(
                onPressed: () {
                  _controller.animateToPage(
                    2,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.bounceInOut,
                  );
                },
              ),
            ),
            FadeAnimation(
              0.01,
              PageThree(),
            ),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  final Function onPressed;
  const PageOne({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: width,
        height: height,
        color: Constants.COLORS[1],
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.15),
              FadeAnimation(0.30, Image.asset('assets/images/png/tela_1.png')),
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
                  width: 160,
                  height: 50,
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: onPressed,
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
                        SizedBox(height: height * 0.08),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  final Function onPressed;
  const PageTwo({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: width,
        height: height,
        color: Constants.COLORS[1],
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.18),
              FadeAnimation(0.3, Image.asset('assets/images/png/tela_2.png')),
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
                  width: 160,
                  height: 50,
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: onPressed,
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
                ),
              ),
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
    return SafeArea(
      child: Container(
        width: width,
        height: height,
        color: Constants.COLORS[1],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Column(
              children: [
                SizedBox(height: height * 0.045),
                FadeAnimation(0.3, Image.asset('assets/images/png/tela_3.png')),
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
                      width: 160,
                      height: 50,
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
      ),
    );
  }
}
