import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    // Dummy data untuk produk
    Product(
        id: '1',
        name: 'iPhone 12',
        description: 'Latest Apple iPhone',
        imageUrl: 'https://example.com/iphone12.jpg',
        price: 799),
    Product(
        id: '2',
        name: 'MacBook Air',
        description: 'Powerful Apple Laptop',
        imageUrl: 'https://example.com/macbookair.jpg',
        price: 999),
  ];

  List<Product> get products => _products;

  void fetchProducts() {
    // Fetch data dari backend di sini
    notifyListeners();
  }
}
