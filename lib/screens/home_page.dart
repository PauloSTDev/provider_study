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
      drawer: Drawer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home Page Provider"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          TextButton(
            child: const Icon(Icons.account_circle_rounded),
            onPressed: () => _themeController.setTheme(ThemeData.light()),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
          TextButton(
            child: const Icon(Icons.account_circle_rounded),
            onPressed: () => _themeController.setTheme(ThemeData.dark()),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        //Apresentando valor atualizado do counter
        child: Consumer<Counter>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(value.count.toString()),
                const SizedBox(height: 10.0,),
                TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, "shopping_cart"),
                    child: const Text("Next Page"),
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).primaryColorDark,
                    backgroundColor: Theme.of(context).primaryColorLight,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).decrementar();
            },
            key: const Key("decremento_FloatingActionButton"),
            tooltip: "Decrementar",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).resetar();
            },
            key: const Key("reset_FloatingActionButton"),
            tooltip: "Reset",
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(
            width: 10.0,
          ),
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
