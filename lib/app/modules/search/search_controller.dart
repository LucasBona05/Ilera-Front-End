import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';
import 'package:mobx/mobx.dart';
part 'search_controller.g.dart';

class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  final NutricionistaRepository nutricionistaRepository;

  _SearchControllerBase(this.nutricionistaRepository);

  @action
  Future<List<NutricionistaModel>> getTodosNutricionistas() async {
    return await this.nutricionistaRepository.getTodosNutricionistas();
  }
}
