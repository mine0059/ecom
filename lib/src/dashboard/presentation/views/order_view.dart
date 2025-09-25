import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  static const path = '/order';

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop, size: 64),
            SizedBox(height: 16),
            Text('Orders Screen'),
          ],
        ),
      ),
    );
  }
}
