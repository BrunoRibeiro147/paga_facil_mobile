import 'package:mobx/mobx.dart';
part 'newcard_controller.g.dart';

class NewCardController = _NewCardControllerBase with _$NewCardController;

abstract class _NewCardControllerBase with Store {
  @observable
  String cardTitle = '';

  @action
  changeCardTitle(String newCardTitle) => cardTitle = newCardTitle;

  @observable
  String number = '';

  @action
  changeCardNumber(String newNumber) => number = newNumber;

  @observable
  String name = '';

  @action
  changeCardName(String newName) => name = newName;

  @observable
  String cvv = '';

  @action
  changeCardCvv(String newCvv) => cvv = newCvv;

  @observable
  String expirity = '';

  @action
  changeCardExpirity(String newExpirity) => expirity = newExpirity;

  @observable
  String cardFlag = '';

  changeCardFlag(String newCardFlag) => cardFlag = newCardFlag;
}
