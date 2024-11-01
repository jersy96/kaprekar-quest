import 'package:flutter/material.dart';
import 'package:kaprekar_quest/presentation/core/home_page.dart';

class KaprekarQuestApp extends StatelessWidget {
  const KaprekarQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaprekar Quest',
      home: HomePage(),
    );
  }
}