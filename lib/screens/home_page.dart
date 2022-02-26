import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/controller_provider/counter_provider.dart';
import 'package:provider_study/controller_provider/theme_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController _themeController = Provider.of<ThemeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page Provider"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "shopping_cart");
              },
              child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Center(
        //Apresentando valor atualizado do counter
        child: Consumer<Counter>(
            builder: (context, value, child) {
              return Text(value.count.toString());
            },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            child: const Icon(Icons.account_circle_outlined),
            onPressed: () => _themeController.setTheme(ThemeData.light()),
          ),
          ElevatedButton(
            child: const Icon(Icons.account_circle_rounded),
            onPressed: () => _themeController.setTheme(ThemeData.dark()),
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).decrementar();
            },
            key: const Key("decremento_FloatingActionButton"),
            tooltip: "Decrementar",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10.0,),
          FloatingActionButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).resetar();
            },
            key: const Key("reset_FloatingActionButton"),
            tooltip: "Reset",
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(width: 10.0,),
          FloatingActionButton(
            onPressed: () {
              //Realizando as mudanças de State, incrementando valor
              Provider.of<Counter>(context, listen: false).incrementar();
            },
            key: const Key("incremento_FloatingActionButton"),
            tooltip: "Incremento",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
