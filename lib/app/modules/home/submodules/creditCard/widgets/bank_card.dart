import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/card_detail_model.dart';

class BankCard extends StatelessWidget {
  final CardDetail cardDetail;

  const BankCard({this.cardDetail});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  cardDetail?.cardTitle ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset('images/visa.svg')
              ],
            ),
            Text(
              this.cardDetail?.number ?? '',
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
                  value: this.cardDetail?.name ?? '',
                ),
                Spacer(),
                CardTextField(
                  label: 'Validade',
                  value: this.cardDetail?.expiry ?? '',
                ),
                Spacer()
              ],
            )
          ],
        ),
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
