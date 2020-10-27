import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/pessoa_model.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final AlunoModel alunoModel;
  const HomePage({Key key, this.title = "Home", this.alunoModel})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: widget.alunoModel.email == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('NOME: ${widget.alunoModel.nomeCompleto}'),
                  Text('EMAIL: ${widget.alunoModel.email}'),
                  Text('CPF: ${widget.alunoModel.cpf}'),
                  Text('GENERO: ${widget.alunoModel.genero}'),
                  Text('PLANO: ${widget.alunoModel.plano}'),
                ],
              ),
      ),
    );
  }
}
