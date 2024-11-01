import 'package:flutter/widgets.dart';
import 'package:kaprekar_quest/application/injection/injection_container.dart';

void initializeApp({
  required String envFile,
  required Widget appWidget,
}) async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await _initScreenUtil();
  // await _initEnvFile(envFile);
  injectDependencies();
  runApp(appWidget);
}

// Future<void> _initScreenUtil() async {
//   await ScreenUtil.ensureScreenSize();
// }

// Future<void> _initEnvFile(String envFile) async {
//   await dotenv.load(fileName: envFile);
// }
