class Product {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

List<Product> appleProducts = [
  Product(
    id: 'p1',
    name: 'iPhone 13',
    description: 'Latest model of iPhone 13 with A15 Bionic chip.',
    imageUrl: 'https://example.com/iphone13.jpg',
    price: 999.99,
  ),
  Product(
    id: 'p2',
    name: 'Apple Watch Series 7',
    description: 'Smartwatch with larger display and faster charging.',
    imageUrl: 'https://example.com/applewatch7.jpg',
    price: 399.99,
  ),
  Product(
    id: 'p3',
    name: 'AirPods Pro',
    description: 'Wireless earbuds with active noise cancellation.',
    imageUrl: 'https://example.com/airpodspro.jpg',
    price: 249.99,
  ),
  Product(
    id: 'p4',
    name: 'MacBook Air M1',
    description: 'Lightweight laptop with Apple M1 chip.',
    imageUrl: 'https://example.com/macbookairm1.jpg',
    price: 999.99,
  ),
  Product(
    id: 'p5',
    name: 'iPad Pro 11"',
    description: 'Powerful iPad with 11" Liquid Retina display.',
    imageUrl: 'https://example.com/ipadpro11.jpg',
    price: 799.99,
  ),
  Product(
    id: 'p6',
    name: 'Apple TV 4K',
    description: 'Stream your favorite shows in 4K resolution.',
    imageUrl: 'https://example.com/appletv4k.jpg',
    price: 179.99,
  ),
  Product(
    id: 'p7',
    name: 'iMac 24"',
    description: '24" iMac with Retina display and M1 chip.',
    imageUrl: 'https://example.com/imac24.jpg',
    price: 1299.99,
  ),
  Product(
    id: 'p8',
    name: 'Magic Keyboard',
    description: 'Magic Keyboard for iPad Pro with trackpad.',
    imageUrl: 'https://example.com/magickeyboard.jpg',
    price: 299.99,
  ),
  Product(
    id: 'p9',
    name: 'MagSafe Charger',
    description: 'Magnetic wireless charger for iPhone.',
    imageUrl: 'https://example.com/magsafecharger.jpg',
    price: 39.99,
  ),
  Product(
    id: 'p10',
    name: 'HomePod Mini',
    description: 'Compact smart speaker with Siri.',
    imageUrl: 'https://example.com/homepodmini.jpg',
    price: 99.99,
  ),
  Product(
    id: 'p11',
    name: 'Apple Pencil 2nd Gen',
    description: 'Stylus for iPad with wireless charging.',
    imageUrl: 'https://example.com/applepencil2.jpg',
    price: 129.99,
  ),
  Product(
    id: 'p12',
    name: 'AirTag',
    description: 'Track your items with AirTag.',
    imageUrl: 'https://example.com/airtag.jpg',
    price: 29.99,
  ),
];
