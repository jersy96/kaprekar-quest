import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaprekar Quest',
      home: SelectionArea(
        child: Scaffold(
          body: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
