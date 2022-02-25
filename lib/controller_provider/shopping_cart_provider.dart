import 'package:flutter/material.dart';

class ShoppingCartProvider with ChangeNotifier {
  final List<String> _shoppingCart = ["Maça", "Laranja", "Uva"];

  int get cartCount => _shoppingCart.length;
  List<String> get cart => _shoppingCart;

  void addItem(String item){
    _shoppingCart.add(item);
    notifyListeners();
  }

}