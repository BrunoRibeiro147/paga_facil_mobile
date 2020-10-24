import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paga_facil/app/modules/home/submodules/creditCard/pages/NewCard/newcard_controller.dart';
import '../models/card_detail_model.dart';

class BankCard extends StatefulWidget {
  final CardDetail cardDetail;

  BankCard({this.cardDetail});

  @override
  _BankCardState createState() => _BankCardState(this.cardDetail);
}

class _BankCardState extends State<BankCard> {
  final CardDetail cardDetail;
  NewCardController controller;

  _BankCardState(this.cardDetail);

  @override
  void initState() {
    super.initState();

    if (cardDetail == null) {
      controller = Modular.get<NewCardController>();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10).copyWith(bottom: 10.0 * 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            this.cardDetail?.background ?? 'images/card_bg.png',
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFCFECF8),
            blurRadius: 10.0 * 3,
            offset: Offset(0, 10.0 * 2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0 * 2),
        child: Observer(builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cardDetail?.cardTitle ?? controller.cardTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SvgPicture.asset(
                    'images/visa.svg',
                    height: 18,
                    width: 18,
                    fit: BoxFit.contain,
                  )
                ],
              ),
              Text(
                this.cardDetail?.number ?? controller.number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.10),
                      blurRadius: 10,
                      offset: Offset(0, 10.0 * 5),
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  CardTextField(
                    label: 'Titular do Cartão',
                    value: this.cardDetail?.name ?? controller.name,
                  ),
                  Spacer(),
                  CardTextField(
                    label: 'Validade',
                    value: this.cardDetail?.expiry ?? controller.expirity,
                  ),
                  Spacer()
                ],
              )
            ],
          );
        }),
      ),
    );
  }
}

class CardTextField extends StatelessWidget {
  final String label;
  final String value;

  const CardTextField({Key key, this.label, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: '$label\n',
          style: TextStyle(
            color: Colors.white,
            fontSize: 9,
            fontWeight: FontWeight.w500,
            shadows: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.10),
                blurRadius: 10,
                offset: Offset(0, 10.0 * 5),
              )
            ],
          ),
        ),
        TextSpan(
          text: this.value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            height: 1.5,
            shadows: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.10),
                blurRadius: 10,
                offset: Offset(0, 10.0 * 5),
              )
            ],
          ),
        )
      ]),
    );
  }
}
