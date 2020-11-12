import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/instrutor_model.dart';
import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/models/psicologo_model.dart';
import 'package:ilera/app/modules/search/search_controller.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:simple_code/simple_code.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

String _buscaInstrutor = "INSTRUTORES_FISICOS";

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  List<NutricionistaModel> nutricionistas;
  List<InstrutorModel> instrutores;
  List<PsicologoModel> psicologos;

  @override
  void initState() {
    _getNutricionistas();
    _getInstrutores();
    _getPsicologos();
    super.initState();
  }

  _getNutricionistas() async {
    nutricionistas = await controller.getTodosNutricionistas();
  }

  _getInstrutores() async {
    instrutores = await controller.getTodosInstrutores();
  }

  _getPsicologos() async {
    psicologos = await controller.getTodosPsicologos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conponents.ileraAppBar("Busca", context),
      bottomNavigationBar: Conponents.ileraBottomAppBar(
        Constants.COLORS[0],
        Constants.COLORS[2],
        Constants.COLORS[0],
        context,
      ),
      body: Container(
        color: Constants.COLORS[1],
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Instrutores",
                  style: TextStyle(
                    color: Constants.COLORS[0],
                    fontSize: sz(25),
                  ),
                ),
              ),
              SizedBox(height: hsz(15)),
              Container(
                height: hsz(35),
                decoration: BoxDecoration(
                  color: Constants.COLORS[0],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        value: _buscaInstrutor,
                        items: [
                          DropdownMenuItem(
                            value: "INSTRUTORES_FISICOS",
                            child: Text("Instrutores Físicos"),
                          ),
                          DropdownMenuItem(
                            value: "PSICOLOGO",
                            child: Text("Psicologo"),
                          ),
                          DropdownMenuItem(
                            value: "NUTRICIONISTA",
                            child: Text("Nutricionista"),
                          ),
                        ],
                        onChanged: (buscaInstrutor) {
                          setState(() {
                            _buscaInstrutor = buscaInstrutor;
                          });
                        }),
                  ),
                ),
              ),
              _buscaInstrutor == null
                  ? informacaoVazia(
                      double.infinity,
                      "Ainda sem profissionais nessa categoria!",
                    )
                  : _buscaInstrutor == "INSTRUTORES_FISICOS"
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: ListView.builder(
                            itemCount: instrutores.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
                                child: GestureDetector(
                                  //TODO CONSTRUIR ROTA PARA PERFIL DO INSTRUTOR
                                  onTap: () {
                                    print("CLICADO");
                                  },
                                  child: blocoInstrutor(
                                      index, instrutores, "Instrutor Físico"),
                                ),
                              );
                            },
                          ),
                        )
                      : _buscaInstrutor == "PSICOLOGO"
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: ListView.builder(
                                itemCount: psicologos.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 15, 8, 0),
                                    child: GestureDetector(
                                      //TODO CONSTRUIR ROTA PARA PERFIL DO PSICOLOGO
                                      onTap: () {
                                        print("CLICADO");
                                      },
                                      child: blocoInstrutor(
                                          index, psicologos, "Psicólogo"),
                                    ),
                                  );
                                },
                              ),
                            )
                          : _buscaInstrutor == "NUTRICIONISTA"
                              ? Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, bottom: 5),
                                  child: ListView.builder(
                                    itemCount: nutricionistas.length,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 15, 8, 0),
                                        child: GestureDetector(
                                          //TODO CONSTRUIR ROTA PARA PERFIL DO NUTRICIONISTA
                                          onTap: () {
                                            print("CLICADO");
                                          },
                                          child: blocoInstrutor(index,
                                              nutricionistas, "Nutricionista"),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Container blocoInstrutor(
      int index, List<dynamic> instrutor, String tipoInstrutor) {
    return Container(
      width: wsz(60),
      height: hsz(80),
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Constants.COLORS[2],
                backgroundImage:
                    NetworkImage('${instrutor[index].fotoDePerfil.imageUrl}'),
                radius: 40,
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${instrutor[index].nomeCompleto}",
                    style: TextStyle(
                      color: Constants.COLORS[3],
                      fontSize: sz(17),
                    ),
                  ),
                  SizedBox(height: hsz(10)),
                  Text(
                    "$tipoInstrutor",
                    style: TextStyle(
                      color: Constants.COLORS[3],
                      fontSize: sz(14),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.person,
                color: Constants.COLORS[2],
                size: sz(45),
              ),
            ],
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
