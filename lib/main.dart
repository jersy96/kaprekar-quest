import 'package:kaprekar_quest/application/initialization/initialize_app.dart';
import 'package:kaprekar_quest/presentation/core/kaprekar_quest_app.dart';

void main() {
  initializeApp(
    envFile: '.env',
    appWidget: const KaprekarQuestApp(),
  );
}
