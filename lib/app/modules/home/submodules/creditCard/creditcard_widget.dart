import 'package:carousel_slider/carousel_slider.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paga_facil/app/modules/home/submodules/creditCard/creditcard_controller.dart';

import 'widgets/bank_card.dart';
import 'widgets/transaction_item.dart';

class CreditCardPage extends StatefulWidget {
  CreditCardPage({Key key}) : super(key: key);

  @override
  _CreditCardPageState createState() => _CreditCardPageState();
}

class _CreditCardPageState
    extends ModularState<CreditCardPage, CreditCardController> {
  @override
  Widget build(BuildContext context) {
    var headerCard = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Meus Cartões',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                'Novo Cartão',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/new');
                },
                icon: Icon(
                  FeatherIcons.plusCircle,
                  color: Theme.of(context).buttonColor,
                ),
              )
            ],
          )
        ],
      ),
    );

    var cardCarousel = Stack(
      children: <Widget>[
        CarouselSlider.builder(
          options: CarouselOptions(
              height: 240,
              aspectRatio: 16 / 9,
              initialPage: 1,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                controller.changeIndex(index);
              }),
          itemCount: controller.cardmock.length,
          itemBuilder: (
            BuildContext context,
            index,
          ) =>
              BankCard(
            cardDetail: controller.cardmock[index],
          ),
        ),
        Observer(builder: (_) {
          return Positioned(
            bottom: 10.0 * 2,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: controller.cardmock
                  .map(
                    (card) => Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(horizontal: 10.0 / 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            controller.cardmock[controller.cardindex].number ==
                                    card.number
                                ? Theme.of(context).primaryColor
                                : Colors.transparent,
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        })
      ],
    );

    var informationHeader = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0 * 2)
          .copyWith(top: 10.0 * 2, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Informações',
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Icon(
                FeatherIcons.info,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
          Divider(),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pague Fácil',
          style: TextStyle(color: Colors.deepPurpleAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            headerCard,
            cardCarousel,
            informationHeader,
            Expanded(
              child: Observer(builder: (_) {
                return ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    InformationItem(
                      label: 'Melhor dia de Compra',
                      value: controller.cardmock[controller.cardindex].bestDay,
                    ),
                    InformationItem(
                      label: 'Limite de Crédito:',
                      value:
                          'R\$ ${controller.cardmock[controller.cardindex].limitCredit}',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0 * 3,
                        horizontal: 10.0 * 2,
                      ),
                      child: Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 2,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Ultimas Compras',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).buttonColor,
                                  ),
                                ),
                                Container(
                                  height: 240,
                                  child: ListView.builder(
                                    itemCount: controller
                                        .cardmock[controller.cardindex]
                                        .transactions
                                        .length,
                                    itemBuilder: (context, index) =>
                                        TransactionItem(
                                      controller.cardmock[controller.cardindex]
                                          .transactions[index],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class InformationItem extends StatelessWidget {
  final String label;
  final String value;

  const InformationItem({
    Key key,
    this.label,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0 * 2,
        horizontal: 10.0 * 2,
      ),
      child: Container(
        height: 50,
        child: Card(
          elevation: 2,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(label),
                Text(
                  value,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
