import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/controller_provider/counter_provider.dart';
import 'package:provider_study/controller_provider/shopping_cart_provider.dart';
import 'package:provider_study/screens/home_page.dart';
import 'package:provider_study/screens/second_page.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Counter()),
          ChangeNotifierProvider(create: (_) => ShoppingCartProvider()),
        ],
        child: const MyApp()),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        "second": (context) => SecondPage(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}