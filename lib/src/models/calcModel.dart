import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  String valor;
  String result;
  List lista;

  Saldo(this.valor);



  void adiciona(String valor) {
    this.valor = valor;

    notifyListeners();
  }

  void resultado(String result){
    this.result = valor;

    notifyListeners();
  }

  @override
  String toString() {
    return '$valor';
  }
}
