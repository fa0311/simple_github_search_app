import 'package:flutter/material.dart';

class TestComponentUtil {
  TestComponentUtil._();

  static Widget setApp(Widget widget) {
    return MaterialApp(
      home: Scaffold(
        body: widget,
      ),
    );
  }
}
