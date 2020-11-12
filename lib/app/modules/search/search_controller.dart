import 'package:ilera/app/models/instrutor_model.dart';
import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/models/psicologo_model.dart';
import 'package:ilera/app/repositories/instrutor_repository.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';
import 'package:ilera/app/repositories/psicologo_repository.dart';
import 'package:mobx/mobx.dart';
part 'search_controller.g.dart';

class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  final NutricionistaRepository nutricionistaRepository;
  final InstrutorRepository instrutorRepository;
  final PsicologoRepository psicologoRepository;

  _SearchControllerBase([
    this.nutricionistaRepository,
    this.instrutorRepository,
    this.psicologoRepository,
  ]);

  @action
  Future<List<NutricionistaModel>> getTodosNutricionistas() async {
    return await this.nutricionistaRepository.getTodosNutricionistas();
  }

  @action
  Future<List<InstrutorModel>> getTodosInstrutores() async {
    return await this.instrutorRepository.getTodosInstrutores();
  }

  @action
  Future<List<PsicologoModel>> getTodosPsicologos() async {
    return await this.psicologoRepository.getTodosPsicologos();
  }
}
