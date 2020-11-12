import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/start/start_controller.dart';
import 'package:ilera/app/modules/start/start_page.dart';

class StartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StartController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/start', child: (_, args) => StartPage()),
      ];

  static Inject get to => Inject<StartModule>.of();
}
