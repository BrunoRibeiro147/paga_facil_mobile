import 'package:flutter_modular/flutter_modular.dart';
import 'package:paga_facil/app/modules/home/submodules/simulation/simulation_controller.dart';

import 'simulation_widget.dart';

class SimulationModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => SimulationController())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => SimulationPage(),
        )
      ];
}
