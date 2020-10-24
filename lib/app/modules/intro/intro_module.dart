import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/intro/intro_page.dart';

import 'intro_controller.dart';

class IntroModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => IntroController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/intro', child: (_, args) => IntroPage()),
      ];

  static Inject get to => Inject<IntroModule>.of();
}
