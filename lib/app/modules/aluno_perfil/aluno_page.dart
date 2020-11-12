import 'package:flutter/material.dart';

import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:simple_code/simple_code.dart';

class AlunoPage extends StatefulWidget {
  final AlunoModel aluno;
  const AlunoPage({Key key, this.aluno}) : super(key: key);
  @override
  _AlunoPageState createState() => _AlunoPageState();
}

class _AlunoPageState extends State<AlunoPage> {
  final AlunoModel aluno;

  _AlunoPageState({this.aluno});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conponents.ileraAppBar("Ilera", context),
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
                    ],
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
