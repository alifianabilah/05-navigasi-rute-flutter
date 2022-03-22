import 'package:flutter/material.dart';
import 'package:navigasi_rute/pages/homepage.dart';
import 'package:navigasi_rute/pages/itempage.dart';
import 'package:navigasi_rute/models/item.dart';

// Alifia Shofa' Nabilah (2031710027)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ItemPage.routeName) {
          final args = settings.arguments as Item;
          return MaterialPageRoute(
            builder: (context) {
              return ItemPage(
                name: args.name,
                stock: args.stock,
                price: args.price,
              );
            },
          );
        }
        assert(false, '${settings.name}');
        return null;
      },
    );
  }
}
