import 'package:flutter_modular/flutter_modular.dart';

import 'instrutor_controller.dart';
import 'instrutor_page.dart';

class InstrutorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InstrutorController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/instrutor', child: (_, args) => InstrutorPage()),
      ];

  static Inject get to => Inject<InstrutorModule>.of();
}
