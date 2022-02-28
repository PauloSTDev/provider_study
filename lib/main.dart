import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/controller_provider/counter_provider.dart';
import 'package:provider_study/controller_provider/shopping_cart_provider.dart';
import 'package:provider_study/controller_provider/theme_controller.dart';
import 'package:provider_study/screens/home_page.dart';
import 'package:provider_study/screens/shopping_cart_page.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCartProvider()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeController>(
      create: (_) => ThemeController(
          ThemeData(primarySwatch: Colors.green)),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeController>(context);
    return MaterialApp(
      title: 'Study Provider',
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        "shopping_cart": (context) => const ShopppingCartPage(),
      },
    );
  }
}
