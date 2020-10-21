import 'package:flutter_modular/flutter_modular.dart';
import 'package:paga_facil/app/modules/home/home_controller.dart';
import 'package:paga_facil/app/modules/home/home_widget.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];
}
