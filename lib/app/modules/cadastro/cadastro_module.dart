import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/cadastro/cadastro_controller.dart';
import 'package:ilera/app/modules/cadastro/cadastro_page.dart';

class CadastroModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CadastroController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/login', child: (_, args) => CadastroPage()),
      ];

  static Inject get to => Inject<CadastroModule>.of();
}
