import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ilera/app/utils/components.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:ilera/app/utils/drawer/menuDrawer.dart';
import 'package:simple_code/simple_code.dart';

class EditarAlunoPage extends StatefulWidget {
  @override
  _EditarAlunoPageState createState() => _EditarAlunoPageState();
}

class _EditarAlunoPageState extends State<EditarAlunoPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MenuDrawerAluno(),
      appBar: Conponents.ileraAppBar("Ilera", context, null),
      body: Container(
        color: Constants.COLORS[1],
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 16, 35, 20),
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
                        Stack(alignment: Alignment.bottomRight, children: [
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
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Constants.COLORS[1],
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Constants.COLORS[0],
                              child: IconButton(
                                iconSize: 18,
                                icon: Icon(Icons.camera_alt),
                                color: Constants.COLORS[1],
                                onPressed: () {},
                              ),
                            ),
                          )
                        ]),
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
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Dados do Usuário',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        color: Constants.COLORS[0],
                        fontSize: 26,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  EmailInputButton(
                    height: height,
                    width: width,
                    hint: 'E-mail'.toUpperCase(),
                  ),
                  SizedBox(height: height * 0.03),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmailInputButton extends StatelessWidget {
  final String hint;
  final double height;
  final double width;
  const EmailInputButton({
    Key key,
    @required this.height,
    @required this.width,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
                color: Constants.COLORS[2],
                fontSize: Constants.REGISTER_FONT_SIZE),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "Preencha o campo!";
            }
            return null;
          },
        ),
      ),
    );
  }
}
