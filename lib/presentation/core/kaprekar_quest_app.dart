import 'package:flutter/material.dart';
import 'package:kaprekar_quest/presentation/core/app_scaffold.dart';

class KaprekarQuestApp extends StatelessWidget {
  const KaprekarQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaprekar Quest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const AppScaffold(),
    );
  }
}
