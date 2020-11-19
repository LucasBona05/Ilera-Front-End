import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/psicologo_perfil/psicologo_controller.dart';
import 'package:ilera/app/modules/psicologo_perfil/psicologo_page.dart';

class PsicologoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PsicologoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/psicologo', child: (_, args) => PsicologoPage()),
      ];

  static Inject get to => Inject<PsicologoModule>.of();
}
