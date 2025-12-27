import 'package:flutter/material.dart';
import 'package:kaprekar_quest/presentation/encryptor/encryptor_page.dart';
import 'package:kaprekar_quest/presentation/iteration_counting/iteration_counting_page.dart';

enum AppPage {
  kaprekar,
  encriptador,
}

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  AppPage _currentPage = AppPage.kaprekar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: MediaQuery.of(context).size.width > 800,
            minExtendedWidth: 200,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.calculate_outlined),
                selectedIcon: Icon(Icons.calculate),
                label: Text('Kaprekar'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.lock_outlined),
                selectedIcon: Icon(Icons.lock),
                label: Text('Encriptador'),
              ),
            ],
            selectedIndex: _currentPage.index,
            onDestinationSelected: (int index) {
              setState(() {
                _currentPage = AppPage.values[index];
              });
            },
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: SelectionArea(
              child: Center(
                child: _buildPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage() {
    switch (_currentPage) {
      case AppPage.kaprekar:
        return const IterationCountingPageContent();
      case AppPage.encriptador:
        return const EncryptorPage();
    }
  }
}
