import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/app_module.dart';
import 'package:ilera/app/models/dieta_model.dart';
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
  _HomePageState createState() => _HomePageState(aluno: alunoModel);
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  AlunoModel aluno;
  DietaModel dieta;
  _HomePageState({this.aluno});

  _getDieta() async {
    this.dieta = await controller.getDieta(aluno.id);
  }

  _getTreino() async {}

  _getSessoes() async {}

  @override
  void initState() {
    _getDieta();
    super.initState();
  }

  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: dieta == null
                            ? informacaoVazia(
                                width,
                                "Você ainda não tem dietas cadastradas!",
                              )
                            : ListView.builder(
                                itemCount: dieta.refeicoes.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width: width * 0.3,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Constants.COLORS[0],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: width * 0.5,
                                            child: Text(
                                              dieta.refeicoes[0].descricao,
                                              style: TextStyle(
                                                color: Constants.COLORS[3],
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: width * 0.08),
                                          Text(
                                            dieta.refeicoes[0].horario,
                                            style: TextStyle(
                                              color: Constants.COLORS[1],
                                              fontSize: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                      ),
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
      ),
    );
  }

  ///Bloco para exibir caso não tiver a devida informação da sessão para exibir
  Container informacaoVazia(double width, String text) {
    return Container(
      width: width * 0.3,
      height: 100,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "$text",
            style: TextStyle(
              color: Constants.COLORS[3],
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
