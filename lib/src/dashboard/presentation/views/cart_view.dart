import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  static const path = '/cart';

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart, size: 64, color: Colors.blue),
            SizedBox(height: 16),
            Text('Your Cart'),
            SizedBox(height: 8),
            Text('3 items in cart'),
          ],
        ),
      ),
    );
  }
}
