import 'package:flutter/material.dart';
import '../pages/product_detail.dart'; // Ganti dengan nama proyek
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> appleProducts = [
    {
      'name': 'iPhone 14 Pro',
      'price': '\$999',
      'image': 'assets/iphone14pro.jpg',
    },
    {
      'name': 'MacBook Pro 16"',
      'price': '\$2399',
      'image': 'assets/macbookpro.jpg',
    },
    {
      'name': 'Apple Watch Series 8',
      'price': '\$499',
      'image': 'assets/applewatch.jpg',
    },
    {
      'name': 'AirPods Pr',
      'price': '\$249',
      'image': 'assets/airpodspro.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: appleProducts.length,
        itemBuilder: (context, index) {
          final product = appleProducts[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman detail produk
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    name: product['name']!,
                    price: product['price']!,
                    imagePath: product['image']!,
                  ),
                ),
              );
            },
            child: ProductCard(
              name: product['name']!,
              price: product['price']!,
              imagePath: product['image']!,
            ),
          );
        },
      ),
    );
  }
}
