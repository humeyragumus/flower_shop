import 'package:denemem1flutter/screens/enum.dart';
import 'package:flutter/material.dart';
import 'bottombar.dart';
import 'package:denemem1flutter/constants.dart';
import 'home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: const Drawer(), // Drawer'ı buraya taşıdık
      body: const HomeBody(), // Sadece içerik
      bottomNavigationBar: const BottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}