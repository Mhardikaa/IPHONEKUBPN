import 'package:flutter/material.dart';
import 'package:iPhonekubpn/view/product_detail.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ProductDetailScreen(product),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Image.network(product.imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Text('\$${product.price}'),
          ],
        ),
      ),
    );
  }
}
