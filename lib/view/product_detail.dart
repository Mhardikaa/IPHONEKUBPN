import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [
          Image.network(product.imageUrl),
          SizedBox(height: 10),
          Text(
            product.description,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            '\$${product.price}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              // Implementasi untuk menambahkan ke keranjang
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
