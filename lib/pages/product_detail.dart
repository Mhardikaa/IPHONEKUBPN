import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;

  ProductDetailPage({
    required this.name,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // Elemen-elemen akan diatur di tengah secara vertikal
            crossAxisAlignment: CrossAxisAlignment
                .center, // Elemen-elemen akan diatur di tengah secara horizontal
            children: [
              Expanded(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain, // Gambar akan ditampilkan sesuai ukuran
                ),
              ),
              SizedBox(height: 20), // Jarak antara gambar dan nama produk
              Text(
                name,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                price,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30), // Jarak antara harga dan tombol
              ElevatedButton(
                onPressed: () {
                  // Aksi untuk menambahkan produk ke keranjang atau membeli
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15), // Ukuran tombol lebih besar
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
