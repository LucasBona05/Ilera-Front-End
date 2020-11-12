import 'package:ilera/app/models/dieta_model.dart';
import 'package:ilera/app/models/ficha_de_treino_model.dart';
import 'package:ilera/app/repositories/dieta_repository.dart';
import 'package:ilera/app/repositories/treino_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final DietaRepository dietaRepository;
  final TreinoRepository treinoRepository;

  _HomeControllerBase([this.treinoRepository, this.dietaRepository]);

  @action
  Future<DietaModel> getDieta(int id) async {
    return await this.dietaRepository.getDietaByIdAluno(id);
  }

  @action
  Future<FichaDeTreinoModel> getTreino(int id) async {
    return await this.treinoRepository.getTreinoByIdAluno(id);
  }
}
