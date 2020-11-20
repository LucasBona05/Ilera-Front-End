import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/repositories/aluno_repository.dart';
import 'package:mobx/mobx.dart';
part 'aluno_controller.g.dart';

@Injectable()
class AlunoController = _AlunoControllerBase with _$AlunoController;

abstract class _AlunoControllerBase with Store {
  final AlunoRepository alunoRepository;

  _AlunoControllerBase(this.alunoRepository);

  @action
  Future<AlunoModel> getAlunoById(int id) async {
    return await alunoRepository.obterPeloId(id);
  }
}
