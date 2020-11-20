import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/modules/aluno_perfil/aluno_controller.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:simple_code/simple_code.dart';

class AlunoPage extends StatefulWidget {
  final int idAluno;
  const AlunoPage({Key key, this.idAluno}) : super(key: key);
  @override
  _AlunoPageState createState() => _AlunoPageState();
}

class _AlunoPageState extends ModularState<AlunoPage, AlunoController> {
  AlunoModel aluno;
  _AlunoPageState({this.aluno});
  @override
  void initState() {
    loadAluno();
    super.initState();
  }

  loadAluno() async {
    aluno = await controller.getAlunoById(widget.idAluno);
    print(aluno.toJson());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conponents.ileraAppBar("Ilera", context, null),
      body: Container(
        color: Constants.COLORS[1],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Constants.COLORS[0],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FutureBuilder(
                    future: controller.getAlunoById(widget.idAluno),
                    builder: (BuildContext context, snapshot) {
                      List<Widget> children;
                      if (snapshot.hasData) {
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 56,
                              backgroundColor: Constants.COLORS[2],
                              child: CircleAvatar(
                                backgroundColor: Constants.COLORS[2],
                                backgroundImage: aluno.fotoDePerfil.imageUrl ==
                                        null
                                    ? AssetImage(
                                        'assets/images/jpg/defaultProfilePicture.jpg')
                                    : NetworkImage(
                                        '${aluno.fotoDePerfil.imageUrl}'),
                                radius: 50,
                              ),
                            ),
                            SizedBox(
                              height: hsz(10),
                            ),
                            Text(
                              "${aluno.nomeCompleto}",
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
                        );
                      } else if (snapshot.hasError) {
                        children = <Widget>[
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text('Error: ${snapshot.error}'),
                          )
                        ];
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
