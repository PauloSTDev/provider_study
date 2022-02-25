import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

//Todos os providers terão o identificador
//with ChangeNotifier, exemplo abaixo
class Counter with ChangeNotifier {
  //Declarar provider(Variavel)
  int _count = 0;

  //Criar metodos de get e set para podermos
  //Pegar esses dados do lado de fora

}