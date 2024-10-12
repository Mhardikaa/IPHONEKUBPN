import 'package:flutter/material.dart';
import 'package:iPhonekubpn/view/cart.dart';
import 'view/home.dart'; // Pastikan mengimpor file yang benar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple Marketplace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          HomeScreen(), // Langsung menuju ke HomeScreen yang sudah punya bottom bar
      routes: {
        '/cart': (ctx) => CartScreen(),
      },
    );
  }
}
