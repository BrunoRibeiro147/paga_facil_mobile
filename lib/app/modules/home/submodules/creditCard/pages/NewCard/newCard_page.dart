import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:paga_facil/app/modules/home/submodules/creditCard/widgets/bank_card.dart';
import 'package:paga_facil/app/widgets/input.dart';

class NewCard extends StatefulWidget {
  NewCard({Key key}) : super(key: key);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  var creditNumberFormatter = new MaskTextInputFormatter(
      mask: '#### #### #### ###', filter: {"#": RegExp(r'[0-9]')});

  var expirationFormmater = new MaskTextInputFormatter(
      mask: '##/##', filter: {"#": RegExp(r'[0-9]')});

  var cvvFormmater = new MaskTextInputFormatter(
      mask: '# # #', filter: {"#": RegExp(r'[0-9]')});

  String _cardValue = 'mastercard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Cartão'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0 * 2,
              horizontal: 10.0 * 2,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10.0 * 2),
                  child: Text(
                    'Adicione um cartão para usar no sistema',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: BankCard(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Apelido do Cartão',
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0 * 2),
                      child: Input(
                        label: 'Cartão X',
                        type: TextInputType.text,
                      ),
                    ),
                    Text('Titulo do Cartão'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0 * 2),
                      child: Input(
                        label: 'José da Silva',
                        type: TextInputType.text,
                      ),
                    ),
                    Text('Número do Cartão'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0 * 2),
                      child: Input(
                        label: '**** **** **** 560',
                        type: TextInputType.number,
                        formatter: creditNumberFormatter,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            children: <Widget>[
                              Text('CVV'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0 * 2, horizontal: 10),
                                child: Input(
                                  label: '***',
                                  type: TextInputType.number,
                                  formatter: cvvFormmater,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            children: <Widget>[
                              Text('Data de Expiração'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0 * 2, horizontal: 10),
                                child: Input(
                                  label: 'MM/YY',
                                  type: TextInputType.number,
                                  formatter: expirationFormmater,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xffE8E8E8),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: _cardValue,
                            onChanged: (value) {
                              setState(() {
                                _cardValue = value;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('MasterCard'),
                                    SvgPicture.asset(
                                      'images/mastercard.svg',
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.contain,
                                    )
                                  ],
                                ),
                                value: 'mastercard',
                              ),
                              DropdownMenuItem(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Visa'),
                                    SvgPicture.asset(
                                      'images/visa.svg',
                                      color: Colors.black,
                                      height: 15,
                                      width: 15,
                                      fit: BoxFit.contain,
                                    )
                                  ],
                                ),
                                value: 'visa',
                              ),
                              DropdownMenuItem(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('American Express'),
                                    SvgPicture.asset(
                                      'images/american-express.svg',
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.contain,
                                    )
                                  ],
                                ),
                                value: 'american express',
                              ),
                              DropdownMenuItem(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Elo'),
                                    SvgPicture.asset(
                                      'images/elo.svg',
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.contain,
                                    )
                                  ],
                                ),
                                value: 'elo',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0 * 4),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 60,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Theme.of(context).buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Cadastrar Novo Cartão',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
