import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Belanja',
    theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(
            onItemTap: (context, item) {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
          ),
      '/item': (context) => const ItemPage(),
    },
  ));
}
