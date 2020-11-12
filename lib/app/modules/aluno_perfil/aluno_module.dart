import 'package:flutter_modular/flutter_modular.dart';

import 'aluno_controller.dart';
import 'aluno_page.dart';

class AlunoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AlunoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/aluno', child: (_, args) => AlunoPage()),
      ];

  static Inject get to => Inject<AlunoModule>.of();
}