import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/json_prefs_file.dart';
import 'package:lukhu_assessment/src/controllers/abstract_controller.dart';
import 'package:lukhu_assessment/src/images.dart';

import '../data/user.dart';

final class AuthController extends AbstractController {
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;
  late GlobalKey<ScaffoldState> loginPageKey;
  late GlobalKey<FormState> loginFormKey;

  late JsonPrefsFile _file;

  /// The function initializes text editing controllers and global keys for a login page form in Dart.
  void init() {
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    loginPageKey = GlobalKey();
    loginFormKey = GlobalKey();
    user.image = Images.profileImage;
    _file = JsonPrefsFile("auth");
  }

  AuthController() {
    init();
  }

  bool _showPassword = true;
  bool get showPassword => _showPassword;
  set showPassword(bool value) {
    _showPassword = value;
    notify;
  }

  Map<String, String> _loginData = {};
  Map<String, String> get loginData => _loginData;

  User _user = User();
  User get user => _user;
  set user(User value) {
    _user = value;
    notify;
  }

  bool get userCanLogin =>
      phoneNumberController.text.isNotEmpty &&
      passwordController.text.isNotEmpty;

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notify;
  }

  bool _isSaveScheduled = false;

  @override
  void copyFromJson(Map<String, dynamic> json) {
    if (json.keys.isEmpty) {
      user = User();
      return;
    }
    _user = User.fromJson(json);
    notify;
  }

  @override
  Future<void> load() async {
    final results = await _file.load();
    try {
      copyFromJson(results);
    } on Exception catch (e) {
      debugPrint("[ERROR] ${e.toString()}");
      rethrow;
    }
  }

  @override
  void save() async {
    _file.save(toJson());
  }

  @override
  void scheduleSave() async {
    if (_isSaveScheduled) return;
    _isSaveScheduled = true;
    await Future.delayed(const Duration(seconds: 1));
    save();
    _isSaveScheduled = false;
  }

  @override
  Map<String, dynamic> toJson() => _user.toJson();

  @override
  Future<void> reset([bool notify = true]) async {
    _loginData = {};
    phoneNumberController.clear();
    passwordController.clear();
    showPassword = true;
    _user.id = null;

    if (notify) notify;
    scheduleSave();
  }
}
