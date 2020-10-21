import 'package:flutter_modular/flutter_modular.dart';
import 'package:paga_facil/app/modules/login/login.controller.dart';
import 'package:paga_facil/app/modules/login/login_widget.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => LoginController())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];
}
