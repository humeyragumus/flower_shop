import 'package:denemem1flutter/screens/bottombar.dart';
import 'package:denemem1flutter/screens/enum.dart';
import 'package:flutter/material.dart';


class ShoppingBasket extends StatefulWidget {
  const ShoppingBasket({super.key});

  @override
  State<ShoppingBasket> createState() => _ShoppingBasketState();
}

class _ShoppingBasketState extends State<ShoppingBasket> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sepetim"),
      ),
      body: const Center(
        // Burada içerik widget'i ekleyin
        child: Text("Sepetim boş"),
      ),
      bottomNavigationBar: const BottomNavBar(
        selectedMenu: MenuState.shoppingbasket,
      ),
    );
  }
}