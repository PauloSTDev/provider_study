import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page Provider"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de vezes que este botão foi clicado:"),

          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            key: const Key("decremento_FloatingActionButton"),
            tooltip: "Decrementar",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10.0,),
          FloatingActionButton(
            onPressed: () {},
            key: const Key("reset_FloatingActionButton"),
            tooltip: "Reset",
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(width: 10.0,),
          FloatingActionButton(
            onPressed: () {},
            key: const Key("incremento_FloatingActionButton"),
            tooltip: "Incremento",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
