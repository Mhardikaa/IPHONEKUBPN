import 'package:flutter/material.dart';
import '../models/cart_item_model.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> _cartItems = []; // State untuk item keranjang

  @override
  void initState() {
    super.initState();
    _loadCartItems(); // Memuat data item dari keranjang (dummy data)
  }

  void _loadCartItems() {
    setState(() {
      _cartItems = [
        CartItem(
          id: 'c1',
          productId: 'p1',
          name: 'iPhone 13',
          price: 999.99,
          quantity: 1,
          imageUrl: 'https://example.com/iphone13.jpg',
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: _cartItems.length,
        itemBuilder: (ctx, i) => CartItemWidget(_cartItems[i]),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/checkout');
        },
        child: Text('Proceed to Checkout'),
      ),
    );
  }
}
