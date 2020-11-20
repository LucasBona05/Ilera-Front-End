import 'package:flutter/material.dart';
import 'package:ilera/app/models/instrutor_model.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:simple_code/simple_code.dart';

class InstrutorPage extends StatefulWidget {
  final InstrutorModel instrutor;
  const InstrutorPage({Key key, this.instrutor}) : super(key: key);
  @override
  _InstrutorPageState createState() => _InstrutorPageState();
}

class _InstrutorPageState extends State<InstrutorPage> {
  @override
  Widget build(BuildContext context) {
    InstrutorModel instrutor = widget.instrutor;
    return Scaffold(
      appBar: Conponents.ileraAppBar("Illera", context),
      bottomNavigationBar: Conponents.ileraBottomAppBar(
        Constants.COLORS[0],
        Constants.COLORS[0],
        Constants.COLORS[0],
        context,
      ),
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
                              '${instrutor.fotoDePerfil.imageUrl}'),
                          radius: 50,
                        ),
                      ),
                      SizedBox(
                        height: hsz(10),
                      ),
                      Text(
                        "${instrutor.nomeCompleto}",
                        style: TextStyle(
                          color: Constants.COLORS[3],
                          fontSize: sz(20),
                        ),
                      ),
                      SizedBox(
                        height: hsz(10),
                      ),
                      Text(
                        "Instrutor Físico",
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
                    "${instrutor.alunos.length} Alunos",
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
                    onTap: () {},
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
