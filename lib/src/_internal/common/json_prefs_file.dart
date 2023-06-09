import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class JsonPrefsFile {
  JsonPrefsFile(this.name);
  final String name;

  /// The function loads a JSON-encoded string from shared preferences and returns it as a Map.
  ///
  /// Returns:
  ///   The `load()` function is returning a `Future` that resolves to a `Map` object with `String` keys
  /// and `dynamic` values. The `Map` object is created by decoding a JSON string retrieved from the
  /// `SharedPreferences` instance with the given `name`. If the retrieved string is null or empty, an
  /// empty `Map` object is returned.
  Future<Map<String, dynamic>> load() async {
    final p = (await SharedPreferences.getInstance()).getString(name);
    return Map<String, dynamic>.from(jsonDecode(p ?? '{}'));
  }

  /// The function saves a map of data as a JSON-encoded string in the device's shared preferences.
  ///
  /// Args:
  ///   data (Map<String, dynamic>): A Map object containing key-value pairs of data to be saved. The
  /// keys must be of type String and the values can be of any type that can be encoded as JSON.
  Future<void> save(Map<String, dynamic> data) async {
    await (await SharedPreferences.getInstance())
        .setString(name, jsonEncode(data));
  }
}
