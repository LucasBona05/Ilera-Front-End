import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/models/pessoa_model.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => HomePage(
                  alunoModel: args.data,
                  title: args.data.toString(),
                )),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
