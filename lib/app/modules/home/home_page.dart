import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/app_module.dart';
import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';

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
      ///AppBar
      appBar: Conponents.ileraAppBar("ilera"),
      bottomNavigationBar: Conponents.ileraBottomAppBar(
        Constants.COLORS[2],
        Constants.COLORS[0],
        Constants.COLORS[0],
        context,
      ),

      ///Body
      body: Center(
        child: widget.alunoModel.email == null
            ? CircularProgressIndicator()
            : Container(
                color: Constants.COLORS[1],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      Text(
                        "Próximas Sessões",
                        style: TextStyle(
                          color: Constants.COLORS[0],
                          fontSize: 25,
                        ),
                      ),
                      //TODO Listar próximas sessões
                      Text(
                        "Dieta",
                        style: TextStyle(
                          color: Constants.COLORS[0],
                          fontSize: 25,
                        ),
                      ),
                      //TODO Listar dieta
                      Text(
                        "Treino",
                        style: TextStyle(
                          color: Constants.COLORS[0],
                          fontSize: 25,
                        ),
                      ),
                      //TODO Listar treinos
                    ],
                  ),
                ),
              ),
        // Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text('NOME: ${widget.alunoModel.nomeCompleto}'),
        //       Text('EMAIL: ${widget.alunoModel.email}'),
        //       Text('CPF: ${widget.alunoModel.cpf}'),
        //       Text('GENERO: ${widget.alunoModel.genero}'),
        //       Text('PLANO: ${widget.alunoModel.plano}'),
        //     ],
        //   ),
      ),
    );
  }
}
