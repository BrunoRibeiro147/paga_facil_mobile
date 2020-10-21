import 'package:mobx/mobx.dart';
import 'package:paga_facil/app/modules/home/submodules/creditCard/models/card_detail_model.dart';

import 'models/transaction_model.dart';
part 'creditcard_controller.g.dart';

class CreditCardController = _CreditCardControllerBase
    with _$CreditCardController;

abstract class _CreditCardControllerBase with Store {
  @observable
  ObservableList<CardDetail> cardmock = [
    CardDetail(
      cardTitle: 'Cartão X',
      number: '8842  2394  2399 1293',
      name: 'Bruno Ribeio',
      expiry: '04/21',
      background: 'images/card_bg_alt.png',
      bestDay: '10/11',
      limitCredit: '1500',
      transactions: [
        Transaction(
          title: 'Sony Playstation',
          date: '14 Março 2020',
          price: 53.95,
        ),
        Transaction(
          title: 'Info Store',
          date: '14 Abril 2020',
          price: 2500.95,
        ),
        Transaction(
          title: 'Café Gourmet',
          date: '15 Setembro 2020',
          price: 5.42,
        ),
      ],
    ),
    CardDetail(
      cardTitle: 'Cartão Y',
      number: '8842  2394  2399 1294',
      name: 'Emma Larsen',
      expiry: '06/22',
      background: 'images/card_bg.png',
      bestDay: '01/11',
      limitCredit: '2100',
      transactions: [
        Transaction(
          title: 'Play Store',
          date: '15 Março 2020',
          price: -53.95,
        ),
        Transaction(
          title: 'Supermercado Genérico',
          date: '21 Agosto 2020',
          price: 250.95,
        ),
        Transaction(
          title: 'Loja Genérica',
          date: '12 de Agosto 2020',
          price: 445.00,
        ),
        Transaction(
          title: 'Uber',
          date: '25 Agosto 2020',
          price: 50.95,
        ),
        Transaction(
          title: 'Ifood',
          date: '05 Setembro 2020',
          price: 51.00,
        ),
      ],
    ),
    CardDetail(
      cardTitle: 'Cartão Z',
      number: '8842  2394  2399 1295',
      name: 'Emma Larsen',
      expiry: '06/22',
      background: 'images/card_bg_alt.png',
      bestDay: '08/11',
      limitCredit: '1800',
      transactions: [
        Transaction(
          title: 'Xbox Live',
          date: '12 Maio 2020',
          price: 53.95,
        ),
        Transaction(
          title: 'Lanche do Bom',
          date: '01 de Outubro',
          price: 25.95,
        ),
      ],
    ),
  ].asObservable();

  @observable
  int cardindex = 1;

  @action
  changeIndex(int value) {
    cardindex = value;
  }
}
