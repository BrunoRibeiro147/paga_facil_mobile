// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newcard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewCardController on _NewCardControllerBase, Store {
  final _$cardTitleAtom = Atom(name: '_NewCardControllerBase.cardTitle');

  @override
  String get cardTitle {
    _$cardTitleAtom.reportRead();
    return super.cardTitle;
  }

  @override
  set cardTitle(String value) {
    _$cardTitleAtom.reportWrite(value, super.cardTitle, () {
      super.cardTitle = value;
    });
  }

  final _$numberAtom = Atom(name: '_NewCardControllerBase.number');

  @override
  String get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(String value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$nameAtom = Atom(name: '_NewCardControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$cvvAtom = Atom(name: '_NewCardControllerBase.cvv');

  @override
  String get cvv {
    _$cvvAtom.reportRead();
    return super.cvv;
  }

  @override
  set cvv(String value) {
    _$cvvAtom.reportWrite(value, super.cvv, () {
      super.cvv = value;
    });
  }

  final _$expirityAtom = Atom(name: '_NewCardControllerBase.expirity');

  @override
  String get expirity {
    _$expirityAtom.reportRead();
    return super.expirity;
  }

  @override
  set expirity(String value) {
    _$expirityAtom.reportWrite(value, super.expirity, () {
      super.expirity = value;
    });
  }

  final _$cardFlagAtom = Atom(name: '_NewCardControllerBase.cardFlag');

  @override
  String get cardFlag {
    _$cardFlagAtom.reportRead();
    return super.cardFlag;
  }

  @override
  set cardFlag(String value) {
    _$cardFlagAtom.reportWrite(value, super.cardFlag, () {
      super.cardFlag = value;
    });
  }

  final _$_NewCardControllerBaseActionController =
      ActionController(name: '_NewCardControllerBase');

  @override
  dynamic changeCardTitle(String newCardTitle) {
    final _$actionInfo = _$_NewCardControllerBaseActionController.startAction(
        name: '_NewCardControllerBase.changeCardTitle');
    try {
      return super.changeCardTitle(newCardTitle);
    } finally {
      _$_NewCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCardNumber(String newNumber) {
    final _$actionInfo = _$_NewCardControllerBaseActionController.startAction(
        name: '_NewCardControllerBase.changeCardNumber');
    try {
      return super.changeCardNumber(newNumber);
    } finally {
      _$_NewCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCardName(String newName) {
    final _$actionInfo = _$_NewCardControllerBaseActionController.startAction(
        name: '_NewCardControllerBase.changeCardName');
    try {
      return super.changeCardName(newName);
    } finally {
      _$_NewCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCardCvv(String newCvv) {
    final _$actionInfo = _$_NewCardControllerBaseActionController.startAction(
        name: '_NewCardControllerBase.changeCardCvv');
    try {
      return super.changeCardCvv(newCvv);
    } finally {
      _$_NewCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCardExpirity(String newExpirity) {
    final _$actionInfo = _$_NewCardControllerBaseActionController.startAction(
        name: '_NewCardControllerBase.changeCardExpirity');
    try {
      return super.changeCardExpirity(newExpirity);
    } finally {
      _$_NewCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardTitle: ${cardTitle},
number: ${number},
name: ${name},
cvv: ${cvv},
expirity: ${expirity},
cardFlag: ${cardFlag}
    ''';
  }
}
