import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/modules/aluno_perfil/aluno_controller.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:ilera/app/utils/drawer/menuDrawer.dart';
import 'package:simple_code/simple_code.dart';

class AlunoPage extends StatefulWidget {
  // final int idAluno;
  // const AlunoPage({Key key, this.idAluno}) : super(key: key);
  @override
  _AlunoPageState createState() => _AlunoPageState();
}

class _AlunoPageState extends ModularState<AlunoPage, AlunoController> {
  // AlunoModel aluno;
  // _AlunoPageState({this.aluno});
  // @override
  // void initState() {
  //   loadAluno();
  //   super.initState();
  // }

  // loadAluno() async {
  //   aluno = await controller.getAlunoById(widget.idAluno);
  //   print(aluno.toJson());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawerAluno(),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 56,
                        backgroundColor: Constants.COLORS[2],
                        child: CircleAvatar(
                          backgroundColor: Constants.COLORS[2],
                          backgroundImage: AssetImage(
                              'assets/images/jpg/defaultProfilePicture.jpg'),
                          radius: 50,
                        ),
                      ),
                      SizedBox(
                        height: hsz(10),
                      ),
                      Text(
                        "Aluno Gonçalves",
                        style: TextStyle(
                          color: Constants.COLORS[3],
                          fontSize: sz(20),
                        ),
                      ),
                      SizedBox(
                        height: hsz(8),
                      ),
                      Text(
                        "Premium",
                        style: TextStyle(
                            color: Constants.COLORS[2],
                            fontSize: sz(20),
                            decoration: TextDecoration.underline),
                      ),
                      Divider(
                        thickness: 2,
                        height: 30,
                        color: Constants.COLORS[1],
                        indent: 40,
                        endIndent: 40,
                      ),
                      Text(
                        "Próxima consulta:",
                        style: TextStyle(
                          color: Constants.COLORS[2],
                          fontSize: sz(18),
                        ),
                      ),
                      SizedBox(
                        height: hsz(5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Constants.COLORS[1],
                          ),
                          SizedBox(
                            width: hsz(8),
                          ),
                          Text(
                            "Janis joplin",
                            style: TextStyle(
                              color: Constants.COLORS[3],
                              fontSize: sz(17),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: hsz(5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Constants.COLORS[1],
                          ),
                          SizedBox(
                            width: hsz(8),
                          ),
                          Text(
                            "27/10/2020",
                            style: TextStyle(
                              color: Constants.COLORS[3],
                              fontSize: sz(17),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: hsz(5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Constants.COLORS[1],
                          ),
                          SizedBox(
                            width: hsz(8),
                          ),
                          Text(
                            "17:10",
                            style: TextStyle(
                              color: Constants.COLORS[3],
                              fontSize: sz(17),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(27, 10, 27, 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Constants.COLORS[0],
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Constants.COLORS[2],
                          child: CircleAvatar(
                            backgroundColor: Constants.COLORS[2],
                            backgroundImage: AssetImage(
                                'assets/images/jpg/defaultProfilePicture.jpg'),
                            radius: 29,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Janis Joplin",
                                style: TextStyle(
                                  color: Constants.COLORS[3],
                                  fontSize: sz(20),
                                ),
                              ),
                              Text(
                                "Nutricionista",
                                style: TextStyle(
                                  color: Constants.COLORS[3],
                                  fontSize: sz(15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.person,
                          color: Constants.COLORS[2],
                          size: sz(40),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
