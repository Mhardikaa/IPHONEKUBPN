class CartItem {
  final String
      id; // ID unik untuk item keranjang (misalnya kombinasi dari id produk)
  final String productId; // ID produk asli
  final String name; // Nama produk
  final double price; // Harga per unit
  final int quantity; // Jumlah item
  final String imageUrl; // URL gambar produk

  CartItem({
    required this.id,
    required this.productId,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });

  // Factory method untuk membuat instance CartItem dari JSON
  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      productId: json['productId'],
      name: json['name'],
      price: json['price'].toDouble(),
      quantity: json['quantity'],
      imageUrl: json['imageUrl'],
    );
  }

  // Method untuk mengonversi CartItem menjadi Map (untuk keperluan JSON)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productId': productId,
      'name': name,
      'price': price,
      'quantity': quantity,
      'imageUrl': imageUrl,
    };
  }
}
