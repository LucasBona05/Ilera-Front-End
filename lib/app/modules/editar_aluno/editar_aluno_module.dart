import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/editar_aluno/editar_aluno_page.dart';

import 'editar_aluno_controller.dart';

class EditarAlunoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EditarAlunoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/editar_perfil_aluno', child: (_, args) => EditarAlunoPage()),
      ];

  static Inject get to => Inject<EditarAlunoModule>.of();
}
