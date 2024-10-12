import 'package:flutter/material.dart';
import 'package:iPhonekubpn/models/cart_item_model.dart';

class CartProvider with ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get totalAmount {
    double total = 0.0;
    _items.forEach((item) {
      total += item.price * item.quantity;
    });
    return total;
  }

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }
}
