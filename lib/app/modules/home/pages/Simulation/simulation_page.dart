import 'package:flutter/material.dart';

class SimulationPage extends StatefulWidget {
  SimulationPage({Key key}) : super(key: key);

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pague Fácil',
          style: TextStyle(color: Colors.deepPurpleAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          children: <Widget>[
            Text(
              'Simulação',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
