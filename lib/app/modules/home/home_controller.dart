import 'package:ilera/app/models/dieta_model.dart';
import 'package:ilera/app/repositories/dieta_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final DietaRepository dietaRepository;

  _HomeControllerBase([this.dietaRepository]);

  @action
  Future<DietaModel> getDieta(int id) async {
    return await this.dietaRepository.getDietaByIdAluno(id);
  }
}
