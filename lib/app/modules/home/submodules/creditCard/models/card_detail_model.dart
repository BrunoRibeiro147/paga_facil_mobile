import 'transaction_model.dart';

class CardDetail {
  final String cardTitle;
  final String number;
  final String name;
  final String expiry;
  final String background;
  final String bestDay;
  final String limitCredit;
  final List<Transaction> transactions;

  CardDetail({
    this.cardTitle,
    this.number,
    this.name,
    this.expiry,
    this.background,
    this.bestDay,
    this.limitCredit,
    this.transactions,
  });
}
