// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creditcard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreditCardController on _CreditCardControllerBase, Store {
  final _$cardmockAtom = Atom(name: '_CreditCardControllerBase.cardmock');

  @override
  ObservableList<CardDetail> get cardmock {
    _$cardmockAtom.reportRead();
    return super.cardmock;
  }

  @override
  set cardmock(ObservableList<CardDetail> value) {
    _$cardmockAtom.reportWrite(value, super.cardmock, () {
      super.cardmock = value;
    });
  }

  final _$cardindexAtom = Atom(name: '_CreditCardControllerBase.cardindex');

  @override
  int get cardindex {
    _$cardindexAtom.reportRead();
    return super.cardindex;
  }

  @override
  set cardindex(int value) {
    _$cardindexAtom.reportWrite(value, super.cardindex, () {
      super.cardindex = value;
    });
  }

  final _$_CreditCardControllerBaseActionController =
      ActionController(name: '_CreditCardControllerBase');

  @override
  dynamic changeIndex(int value) {
    final _$actionInfo = _$_CreditCardControllerBaseActionController
        .startAction(name: '_CreditCardControllerBase.changeIndex');
    try {
      return super.changeIndex(value);
    } finally {
      _$_CreditCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardmock: ${cardmock},
cardindex: ${cardindex}
    ''';
  }
}
