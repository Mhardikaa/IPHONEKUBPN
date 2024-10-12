import 'package:flutter/material.dart';
import '../models/cart_item_model.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  CartItemWidget(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(cartItem.imageUrl),
      title: Text(cartItem.name),
      subtitle: Text('\$${cartItem.price}'),
      trailing: Text('x${cartItem.quantity}'),
    );
  }
}
