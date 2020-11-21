import 'package:flutter/material.dart';
import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:simple_code/simple_code.dart';

class NutricionistaPage extends StatefulWidget {
  final NutricionistaModel nutricionista;
  const NutricionistaPage({Key key, this.nutricionista}) : super(key: key);
  @override
  _NutricionistaPageState createState() => _NutricionistaPageState();
}

class _NutricionistaPageState extends State<NutricionistaPage> {
  TextEditingController perguntaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    NutricionistaModel nutricionista = widget.nutricionista;
    return Scaffold(
      appBar: Conponents.ileraAppBar("Illera", context, [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.search,
              color: Constants.COLORS[0],
              size: sz(26),
            ),
          ),
        )
      ]),
      body: Container(
        color: Constants.COLORS[1],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              child: Container(
                height: hsz(160),
                decoration: BoxDecoration(
                  color: Constants.COLORS[0],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 56,
                        backgroundColor: Constants.COLORS[2],
                        child: CircleAvatar(
                          backgroundColor: Constants.COLORS[2],
                          backgroundImage: NetworkImage(
                              '${nutricionista.fotoDePerfil.imageUrl}'),
                          radius: 50,
                        ),
                      ),
                      SizedBox(
                        height: hsz(10),
                      ),
                      Text(
                        "${nutricionista.nomeCompleto}",
                        style: TextStyle(
                          color: Constants.COLORS[3],
                          fontSize: sz(20),
                        ),
                      ),
                      SizedBox(
                        height: hsz(10),
                      ),
                      Text(
                        "Nutricionista",
                        style: TextStyle(
                          color: Constants.COLORS[2],
                          fontSize: sz(15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
              child: Container(
                height: hsz(80),
                decoration: BoxDecoration(
                  color: Constants.COLORS[0],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "${nutricionista.alunos.length} Alunos",
                    style: TextStyle(
                      color: Constants.COLORS[2],
                      fontSize: sz(20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotaoPerfilInstrutor(
                    //TODO BOTAR POPUP DE PERGUNTA
                    onTap: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 200, 10, 270),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Constants.COLORS[0],
                                  borderRadius: BorderRadius.circular(sz(25)),
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Text(
                                          "Qual a sua pergunta?",
                                          style: TextStyle(
                                            color: Constants.COLORS[1],
                                            fontSize: sz(20),
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 30, 20, 20),
                                        child: Material(
                                          child: Container(
                                            height: hsz(100),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(sz(22)),
                                              color: Colors.grey[300],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      15, 10, 15, 10),
                                              child: TextFormField(
                                                controller: perguntaController,
                                                maxLines: 5,
                                                decoration: InputDecoration(
                                                  labelText: 'Escreva aqui...',
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      BotaoPerfilInstrutor(
                                        color: Constants.COLORS[3],
                                        height: hsz(40),
                                        width: wsz(150),
                                        //TODO
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        text: "Perguntar",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      });
                    },
                    height: hsz(40),
                    width: wsz(150),
                    color: Constants.COLORS[3],
                    text: "Perguntar",
                  ),
                  BotaoPerfilInstrutor(
                    //TODO COLOCAR POPUP DE AGENDAMENTO
                    onTap: () {},
                    height: hsz(40),
                    width: wsz(150),
                    color: Constants.COLORS[3],
                    text: "Agendar",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: BotaoPerfilInstrutor(
                //TODO COLOCAR ROTA DA TELA DE CHAT
                onTap: () {},
                height: hsz(40),
                color: Constants.COLORS[5],
                text: "Conversar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
