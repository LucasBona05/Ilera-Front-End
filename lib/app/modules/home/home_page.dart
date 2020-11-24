import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/dieta_model.dart';
import 'package:ilera/app/models/ficha_de_treino_model.dart';
import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/modules/aluno_perfil/aluno_page.dart';
import 'package:ilera/app/modules/search/search_page.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:ilera/app/utils/drawer/menuDrawer.dart';
import 'package:simple_code/simple_code.dart';

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
  FichaDeTreinoModel treino;
  _HomePageState({this.aluno});

  @override
  void initState() {
    print(aluno.dieta.refeicoes[0].descricao);
    this.dieta = this.aluno.dieta;
    super.initState();
  }

  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      ///AppBar
      drawer: MenuDrawerAluno(),
      appBar: Conponents.ileraAppBar("ilera", context, null),

      ///Body
      body: Center(
        child: widget.alunoModel.email == null
            ? CircularProgressIndicator()
            : Container(
                color: Constants.COLORS[1],
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ListView(
                    children: [
                      SizedBox(height: sz(10)),
                      Text(
                        "Próximas Sessões",
                        style: TextStyle(
                          color: Constants.COLORS[0],
                          fontSize: 25,
                        ),
                      ),
                      //TODO Listar próximas sessões
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: informacaoVazia(
                          width,
                          "Você ainda não tem sessões agendadas!",
                        ),
                      ),

                      Text(
                        "Dieta",
                        style: TextStyle(
                          color: Constants.COLORS[0],
                          fontSize: 25,
                        ),
                      ),

                      ///Exibição da dieta
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: aluno.dieta == null
                            ? informacaoVazia(
                                width,
                                "Você ainda não tem dietas cadastradas!",
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: aluno.dieta.refeicoes.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      width: width * 0.3,
                                      decoration: BoxDecoration(
                                        color: Constants.COLORS[0],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: width * 0.5,
                                              child: Text(
                                                aluno.dieta.refeicoes[index]
                                                    .descricao,
                                                style: TextStyle(
                                                  color: Constants.COLORS[3],
                                                  fontSize: sz(20),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              aluno.dieta.refeicoes[index]
                                                  .horario,
                                              style: TextStyle(
                                                color: Constants.COLORS[1],
                                                fontSize: sz(30),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                      Text(
                        "Treino",
                        style: TextStyle(
                          color: Constants.COLORS[0],
                          fontSize: 25,
                        ),
                      ),
                      //TODO Listar treinos
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: aluno.fichaDeTreino == null
                            ? informacaoVazia(
                                width,
                                "Você ainda não tem sessões agendadas!",
                              )
                            : ListView.builder(
                                itemCount:
                                    aluno.fichaDeTreino.exercicios.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      width: width * 0.3,
                                      decoration: BoxDecoration(
                                        color: Constants.COLORS[0],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 16.0,
                                            bottom: 16.0,
                                            left: 10,
                                            right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              aluno
                                                  .fichaDeTreino
                                                  .exercicios[index]
                                                  .nomeDoExercicio,
                                              style: TextStyle(
                                                color: Constants.COLORS[2],
                                                fontSize: sz(25),
                                              ),
                                            ),
                                            SizedBox(height: sz(10)),
                                            Text(
                                              aluno
                                                  .fichaDeTreino
                                                  .exercicios[index]
                                                  .descricaoDoExercicio,
                                              style: TextStyle(
                                                color: Constants.COLORS[3],
                                                fontSize: sz(20),
                                              ),
                                            ),
                                            SizedBox(height: sz(10)),
                                            Row(
                                              children: [
                                                Text(
                                                  "Repetições:",
                                                  style: TextStyle(
                                                    color: Constants.COLORS[1],
                                                    fontSize: sz(20),
                                                  ),
                                                ),
                                                SizedBox(width: sz(10)),
                                                Text(
                                                  aluno
                                                      .fichaDeTreino
                                                      .exercicios[index]
                                                      .serieDoExercicio
                                                      .identificadorDaSerie,
                                                  style: TextStyle(
                                                    color: Constants.COLORS[3],
                                                    fontSize: sz(20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Tempo de descanso:",
                                                  style: TextStyle(
                                                    color: Constants.COLORS[1],
                                                    fontSize: sz(20),
                                                  ),
                                                ),
                                                SizedBox(width: sz(10)),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      aluno
                                                              .fichaDeTreino
                                                              .exercicios[index]
                                                              .serieDoExercicio
                                                              .tempoDeDescansoEntreCadaSerie
                                                              .toString() +
                                                          "s",
                                                      style: TextStyle(
                                                        color:
                                                            Constants.COLORS[3],
                                                        fontSize: sz(20),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      //Text(aluno.fichaDeTreino.exercicios[index].descricaoDoExercicio),
                                    ),
                                  );
                                },
                              ),
                      ),
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
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "$text",
              style: TextStyle(
                color: Constants.COLORS[3],
                fontSize: sz(22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
