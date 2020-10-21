import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paga_facil/app/app_controller.dart';
import 'package:paga_facil/app/app_widget.dart';
import 'package:paga_facil/app/pages/splash_screen.dart';

import 'modules/home/home_widget.dart';
import 'modules/login/login_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [Bind((i) => AppController())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashScreen()),
        ModularRouter('/login', child: (_, args) => LoginPage()),
        ModularRouter('/home', child: (_, args) => HomePage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
