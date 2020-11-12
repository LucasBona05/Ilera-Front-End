import 'package:flutter_modular/flutter_modular.dart';

import 'nutricionista_controller.dart';
import 'nutricionista_page.dart';

class NutricionistaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NutricionistaController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/nutricionista',
            child: (_, args) => NutricionistaPage()),
      ];

  static Inject get to => Inject<NutricionistaModule>.of();
}
