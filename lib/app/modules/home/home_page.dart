import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/dieta_model.dart';
import 'package:ilera/app/models/ficha_de_treino_model.dart';
import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/modules/aluno_perfil/aluno_page.dart';
import 'package:ilera/app/modules/search/search_page.dart';
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
  FichaDeTreinoModel treino;
  _HomePageState({this.aluno});

  @override
  void initState() {
    print(aluno.dieta.refeicoes[0].descricao);
    super.initState();
  }

  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      ///AppBar
      appBar: Conponents.ileraAppBar("ilera", context),

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
                                                aluno.dieta.refeicoes[index]
                                                    .descricao,
                                                style: TextStyle(
                                                  color: Constants.COLORS[3],
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: width * 0.08),
                                            Text(
                                              aluno.dieta.refeicoes[index]
                                                  .horario,
                                              style: TextStyle(
                                                color: Constants.COLORS[1],
                                                fontSize: 30,
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
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Constants.COLORS[0],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
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
                                                fontSize: 25,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              aluno
                                                  .fichaDeTreino
                                                  .exercicios[index]
                                                  .descricaoDoExercicio,
                                              style: TextStyle(
                                                color: Constants.COLORS[3],
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Text(
                                                  "Repetições:",
                                                  style: TextStyle(
                                                    color: Constants.COLORS[1],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  aluno
                                                      .fichaDeTreino
                                                      .exercicios[index]
                                                      .serieDoExercicio
                                                      .identificadorDaSerie,
                                                  style: TextStyle(
                                                    color: Constants.COLORS[3],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Tempo de descanço:",
                                                  style: TextStyle(
                                                    color: Constants.COLORS[1],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  aluno
                                                          .fichaDeTreino
                                                          .exercicios[index]
                                                          .serieDoExercicio
                                                          .tempoDeDescansoEntreCadaSerie
                                                          .toString() +
                                                      " segundos",
                                                  style: TextStyle(
                                                    color: Constants.COLORS[3],
                                                    fontSize: 20,
                                                  ),
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
