import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paga_facil/app/widgets/input.dart';

class SimulationPage extends StatefulWidget {
  SimulationPage({Key key}) : super(key: key);

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  String _plotsValues = '1x';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SvgPicture.asset(
            'images/logo.svg',
            height: MediaQuery.of(context).size.height * 0.07,
            fit: BoxFit.contain,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Simulação de Empréstimo',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Faça uma simulação dos valores',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Valor do Boleto'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Input(
                    label: 'R\$ 5.390,20',
                    type: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text('Parcelas'),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffE8E8E8),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: _plotsValues,
                        onChanged: (value) {
                          setState(() {
                            _plotsValues = value;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text('1x'),
                            value: '1x',
                          ),
                          DropdownMenuItem(
                            child: Text('2x'),
                            value: '2x',
                          ),
                          DropdownMenuItem(
                            child: Text('3x'),
                            value: '3x',
                          ),
                          DropdownMenuItem(
                            child: Text('4x'),
                            value: '4x',
                          ),
                          DropdownMenuItem(
                            child: Text('5x'),
                            value: '5x',
                          ),
                          DropdownMenuItem(
                            child: Text('6x'),
                            value: '6x',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('Juros Reais'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Input(
                              label: '0,39%',
                              type: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('Cashback'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Input(
                              label: '0,39%',
                              type: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Divider(),
                ),
                Text(
                  'Resultado',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Valor do Boleto'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Input(
                    label: 'R\$ 5.390,20',
                    type: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Juros Compostos'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Input(
                    label: 'R\$ 132,20',
                    type: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Cashback'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Input(
                    label: 'R\$ 152,20',
                    type: TextInputType.text,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
