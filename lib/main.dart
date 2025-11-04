import 'package:flutter/material.dart';
import 'package:denemem1flutter/ui/main_view.dart';
import 'package:denemem1flutter/screens/home_screen.dart'; // HomeScreen'ın import edildiği yer

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(
        onLoginPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  HomeScreen()),
          );
        },
      ),
    );
  }
}
