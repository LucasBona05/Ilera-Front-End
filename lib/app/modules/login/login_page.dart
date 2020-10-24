import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/modules/home/home_page.dart';
import 'package:ilera/app/modules/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'EMAIL'),
              controller: this.controller.email,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'SENHA'),
              controller: this.controller.senha,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
              onPressed: () async {
                AlunoModel aluno = await controller.autenticarAluno();
                Navigator.pushNamed(context, '/', arguments: aluno);
              },
              child: Text('Enviar')),
        ],
      ),
    );
  }
}
