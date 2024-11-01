import 'package:flutter/widgets.dart';

class TextEditingControllerManager {
  final Map<String, TextEditingController> controllers;

  TextEditingControllerManager(this.controllers);

  TextEditingController getController(String key) {
    if (controllers.containsKey(key)) {
      return controllers[key]!;
    } else {
      controllers[key] = TextEditingController();
      return controllers[key]!;
    }
  }
}
