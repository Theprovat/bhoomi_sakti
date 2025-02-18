import 'package:flutter/material.dart';
import 'package:original/widgets/test_request.dart';

import '../../data/products.dart';

class SoilTestRequests extends StatefulWidget {
  const SoilTestRequests({super.key});

  @override
  State<SoilTestRequests> createState() => _SoilTestRequestsState();
}

class _SoilTestRequestsState extends State<SoilTestRequests> {
  final cartItems = products.take(4).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soil Test Requests"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...List.generate(
              cartItems.length,
              (index) {
                final cartItem = cartItems[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: TestRequestWidget(cartItem: cartItem),
                );
              },
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
