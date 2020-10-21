import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store implements Disposable {
  final pageViewController = PageController(
    initialPage: 1,
  );

  @override
  void dispose() {
    pageViewController.dispose();
  }
}
