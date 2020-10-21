import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paga_facil/app/app_controller.dart';
import 'package:paga_facil/app/app_widget.dart';
import 'package:paga_facil/app/modules/home/home_module.dart';
import 'package:paga_facil/app/modules/login/login_module.dart';
import 'package:paga_facil/app/pages/splash_screen.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [Bind((i) => AppController())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashScreen()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
