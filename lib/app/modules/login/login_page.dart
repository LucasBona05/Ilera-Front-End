import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/login/login_controller.dart';
import 'package:ilera/app/utils/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Constants.COLORS[4],
          ),
          Image(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            width: width,
            image: AssetImage('assets/images/png/fundo.png'),
          ),
          ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'assets/images/png/logo_nome_sem_sombra.png'),
                    ),
                    TextFormField(),
                  ],
                ),
              ),
              TextButton(onPressed: () {
                
              }, child: null)
            ],
          ),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: TextFormField(
      //         decoration: InputDecoration(hintText: 'EMAIL'),
      //         controller: this.controller.email,
      //       ),
      //     ),
      //     SizedBox(
      //       height: 30,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: TextFormField(
      //         decoration: InputDecoration(hintText: 'SENHA'),
      //         controller: this.controller.senha,
      //       ),
      //     ),
      //     SizedBox(
      //       height: 50,
      //     ),
      //     TextButton(
      //         onPressed: () {
      //           controller.autenticarNutricionista();
      //         },
      //         child: Text('Enviar')),
      //   ],
      // ),
    );
  }
}
