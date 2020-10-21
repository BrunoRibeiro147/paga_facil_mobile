import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
        bottom: 0,
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 10.0 * 5,
            width: 10.0 * 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            child: Center(
              child: Icon(FeatherIcons.shoppingBag),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0 * 1.5,
              ),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: '${transaction.title}\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '${transaction.date}\n',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ]),
              ),
            ),
          ),
          RichText(
            textAlign: TextAlign.right,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'R\$ ${transaction.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
