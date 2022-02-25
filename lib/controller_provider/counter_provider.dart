import 'package:flutter/material.dart';

//Todos os providers terão o identificador
//with ChangeNotifier, exemplo abaixo
class Counter with ChangeNotifier {


  //Declarar provider(Variavel)
  int _count = 0;

  //Criar getters e setters para podermos
  //pegar esses dados do lado de fora
  int get count => _count;

  void incrementar() {
    _count++;
    notifyListeners();
  }

  void resetar() {
    _count = 0;
    notifyListeners();
  }

  void decrementar() {
    _count--;
    notifyListeners();
  }


}