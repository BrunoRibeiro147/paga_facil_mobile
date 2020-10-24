import 'package:flutter_modular/flutter_modular.dart';
import 'package:paga_facil/app/modules/home/submodules/creditCard/pages/NewCard/newcard_controller.dart';

import 'creditcard_widget.dart';
import 'creditcard_controller.dart';
import 'pages/NewCard/newCard_page.dart';

class CreditCardModule extends ChildModule {
  @override
  List<Bind> get binds =>
      [Bind((i) => CreditCardController()), Bind((i) => NewCardController())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CreditCardPage()),
        ModularRouter('/new', child: (_, args) => NewCard()),
      ];
}
