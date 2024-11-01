import 'package:flutter/material.dart';
import 'package:kaprekar_quest/presentation/core/layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Text('Kaprekar Quest'),
    );
  }
}
