import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// import 'home_controller.dart';
import 'pages/Payment/payment_page.dart';
import 'pages/Simulation/simulation_page.dart';
import 'submodules/creditCard/creditcard_module.dart';
import 'widgets/custom_bottomNavigation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageViewController = PageController(
    initialPage: 1,
  );

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageViewController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          PaymentPage(),
          RouterOutlet(
            module: CreditCardModule(),
          ),
          SimulationPage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: pageViewController,
        builder: (context, snapshot) {
          return CustomBottomNavigation(
            callback: (index) {
              pageViewController.jumpToPage(index);
            },
          );
        },
      ),
    );
  }
}
