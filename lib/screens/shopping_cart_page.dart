import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/controller_provider/shopping_cart_provider.dart';

class ShopppingCartPage extends StatelessWidget {
  const ShopppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page Provider"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Center(
        //Apresentando valor atualizado do counter
        child: Column(
          children: [
            Consumer<ShoppingCartProvider>(
              builder: (context, value, child) {
                return Text("Número de items: "+value.cartCount.toString());
              },
            ),
            Consumer<ShoppingCartProvider>(
              builder: (context, value, child) {
                return Text("Items: "+value.cart.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ShoppingCartProvider>(context, listen: false).addItem("Morango");
        },
        key: const Key("adicionar_FloatingActionButton"),
        tooltip: "Adicionar",
        child: const Icon(Icons.add),
      ),
    );
  }
}
