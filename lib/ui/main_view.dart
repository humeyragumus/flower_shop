// main_view.dart
import 'package:flutter/material.dart';
import 'package:denemem1flutter/ui/screens/login_screen.dart';
import 'package:denemem1flutter/ui/screens/sign_up_screen.dart';
import 'package:denemem1flutter/ui/screens/verify_screen.dart';

class MainView extends StatefulWidget {
  final VoidCallback onLoginPressed;

  const MainView({super.key, required this.onLoginPressed});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        controller: controller,
        itemBuilder: (context, index) {
          if (index == 0) {
            return LoginScreen(
                controller: controller, onLoginPressed: widget.onLoginPressed);
          } else if (index == 1) {
            return SignUpScreen(controller: controller);
          } else {
            return VerifyScreen(controller: controller);
          }
        },
      ),
    );
  }
}
