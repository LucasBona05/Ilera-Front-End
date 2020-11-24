import 'package:flutter/material.dart';
import 'package:ilera/app/modules/editar_aluno/editar_aluno_page.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:simple_code/simple_code.dart';

class MenuDrawerAluno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Constants.COLORS[0], fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Constants.COLORS[5],
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/png/tela_2.png'))),
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(
              Icons.border_color,
              color: Constants.COLORS[0],
            ),
            title: Text('Editar perfil',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditarAlunoPage()))
            },
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Constants.COLORS[0]),
            title: Text('Gerenciar instrutores',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.app_registration, color: Constants.COLORS[0]),
            title: Text('Alterar plano',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.question_answer, color: Constants.COLORS[0]),
            title: Text('Perguntas recorrentes',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Constants.COLORS[0]),
            title: Text('Sair', style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }
}

class MenuDrawerTreinador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Constants.COLORS[0], fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Constants.COLORS[5],
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/png/tela_2.png'))),
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(
              Icons.border_color,
              color: Constants.COLORS[0],
            ),
            title: Text('Editar perfil',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Constants.COLORS[0]),
            title: Text('Gerenciar alunos',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.app_registration, color: Constants.COLORS[0]),
            title: Text('Criar treino',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          //Decidi não implementar o botão de criar exercicio, pois creio que isso deva estar no gerenciar alunos
          //e editar treino, lá poderá adicionar exercicio
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.question_answer, color: Constants.COLORS[0]),
            title: Text('Perguntas recorrentes',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Constants.COLORS[0]),
            title: Text('Sair', style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }
}

class MenuDrawerNutricionista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Constants.COLORS[0], fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Constants.COLORS[5],
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/png/tela_2.png'))),
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(
              Icons.border_color,
              color: Constants.COLORS[0],
            ),
            title: Text('Editar perfil',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Constants.COLORS[0]),
            title: Text('Gerenciar pacientes',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.app_registration, color: Constants.COLORS[0]),
            title: Text('Criar dieta',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.question_answer, color: Constants.COLORS[0]),
            title: Text('Perguntas recorrentes',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Constants.COLORS[0]),
            title: Text('Sair', style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }
}

class MenuDrawerPsicologo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Constants.COLORS[0], fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Constants.COLORS[5],
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/png/tela_2.png'))),
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(
              Icons.border_color,
              color: Constants.COLORS[0],
            ),
            title: Text('Editar perfil',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Constants.COLORS[0]),
            title: Text('Gerenciar pacientes',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.question_answer, color: Constants.COLORS[0]),
            title: Text('Perguntas recorrentes',
                style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: hsz(10),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Constants.COLORS[0]),
            title: Text('Sair', style: TextStyle(color: Constants.COLORS[0])),
            tileColor: Constants.COLORS[2],
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }
}
