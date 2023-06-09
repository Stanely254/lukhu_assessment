import 'package:flutter/material.dart';

abstract class AbstractController extends ChangeNotifier {
  Future load();

  void save();

  void get notify => notifyListeners();

  Map<String, dynamic> toJson();

  void scheduleSave();

  void copyFromJson(Map<String, dynamic> json);

  bool _isOnline = true;
  bool get isOnline => _isOnline;
  set isOnline(bool value) {
    _isOnline = value;
    notify;
  }

  void reset();
}
