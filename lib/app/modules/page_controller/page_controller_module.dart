import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/page_controller/page_controller_controller.dart';
import 'package:ilera/app/modules/page_controller/page_controller_page.dart';
import 'package:ilera/app/modules/psicologo_perfil/psicologo_controller.dart';
import 'package:ilera/app/modules/psicologo_perfil/psicologo_page.dart';

class PageControllerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PageControllerController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/page_controller', child: (_, args) => PageController()),
      ];

  static Inject get to => Inject<PageControllerModule>.of();
}
