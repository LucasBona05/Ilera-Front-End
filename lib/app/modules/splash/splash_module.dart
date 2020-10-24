import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/splash/splash_controller.dart';
import 'package:ilera/app/modules/splash/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/splash', child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}
