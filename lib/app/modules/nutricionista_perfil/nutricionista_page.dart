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
  @override
  Widget build(BuildContext context) {
    NutricionistaModel nutricionista = widget.nutricionista;
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
                    onTap: () {},
                    height: hsz(40),
                    width: wsz(150),
                    color: Constants.COLORS[3],
                    text: "Perguntar",
                  ),
                  BotaoPerfilInstrutor(
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
