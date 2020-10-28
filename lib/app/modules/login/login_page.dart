import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/pessoa_model.dart';
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
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Center(
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'assets/images/png/logo_nome_sem_sombra.png'),
                      ),
                      SizedBox(height: height * 0.1),
                      EmailInputButton(
                        height: height,
                        width: width,
                        controller: controller,
                        hint: "Email",
                      ),
                      SizedBox(height: height * 0.05),
                      SenhaInputButton(
                        height: height,
                        width: width,
                        controller: controller,
                        hint: "Senha",
                      ),
                      SizedBox(height: height * 0.08),
                      BotaoLogin(
                        width: width,
                        height: height,
                        controller: controller,
                      ),
                      SizedBox(height: height * 0.03),
                      BotaoCadastro(
                        width: width,
                        height: height,
                      ),
                      SizedBox(height: height * 0.03),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BotaoCadastro extends StatelessWidget {
  const BotaoCadastro({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.7,
      height: 45,
      child: RaisedButton(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Constants.COLORS[6],
        textColor: Constants.COLORS[0],
        //TODO FAZER ROTA DE CADASTRO
        onPressed: () {},
        child: Text(
          "cadastro".toUpperCase(),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({
    Key key,
    @required this.width,
    @required this.height,
    @required this.controller,
  }) : super(key: key);

  final double width;
  final double height;
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.7,
      height: 45,
      child: RaisedButton(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Constants.COLORS[2],
        textColor: Constants.COLORS[0],
        onPressed: () async {
          showDialog(
            context: context,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
          Navigator.popAndPushNamed(context, '/home',
              arguments: await controller.autenticarAluno());
        },
        child: Text(
          "login".toUpperCase(),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class EmailInputButton extends StatelessWidget {
  final String hint;
  final double height;
  final double width;
  final LoginController controller;
  const EmailInputButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.controller,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Constants.COLORS[3],
          ),
        ),
        controller: this.controller.email,
        validator: (value) {
          if (value.isEmpty) {
            return "Preencha o campo!";
          }
          return null;
        },
      ),
    );
  }
}

class SenhaInputButton extends StatelessWidget {
  final String hint;
  final double height;
  final double width;
  final LoginController controller;
  const SenhaInputButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.controller,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Constants.COLORS[3],
          ),
        ),
        controller: this.controller.senha,
        validator: (value) {
          if (value.isEmpty) {
            return "Preencha o campo!";
          }
          return null;
        },
      ),
    );
  }
}
