import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/modules/search/search_controller.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';
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
  NutricionistaRepository _nutricionistaRepository;

  @override
  void initState() {
    _getNutricionistas();
    super.initState();
  }

  _getNutricionistas() {
    setState(() {
      nutricionistas = _nutricionistaRepository.getTodosNutricionistas()
          as List<NutricionistaModel>;
    });
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
            ],
          ),
        ),
      ),
    );
  }
}
