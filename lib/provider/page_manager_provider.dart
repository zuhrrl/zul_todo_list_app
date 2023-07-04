import 'dart:async';

import 'package:flutter/material.dart';

class PageManagerProvider extends ChangeNotifier {
  late Completer<bool> _addSuccess;

  Future<bool> waitForAddSuccess() async {
    _addSuccess = Completer<bool>();
    return _addSuccess.future;
  }

  setAddSuccess(bool value) {
    _addSuccess.complete(value);
  }
}
