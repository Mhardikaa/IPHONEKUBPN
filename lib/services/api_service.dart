// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/product_model.dart';

// class ApiService {
//   static const String _baseUrl = 'http://localhost:3000/api/products';

//   static Future<List<Product>> getProducts() async {
//     final response = await http.get(Uri.parse(_baseUrl));

//     if (response.statusCode == 200) {
//       List<dynamic> data = json.decode(response.body);
//       return data.map((json) => Product.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
// }
