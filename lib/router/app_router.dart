import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navkey = GlobalKey();
  static pushToWidget(Widget widget) async {
    Navigator.of(navkey.currentContext!)
        .push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  static pushWithReplacementToWidget(Widget widget) {
    Navigator.of(navkey.currentContext!)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  static pop(Widget widget) {
    Navigator.of(navkey.currentContext!)
        .pop(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}
