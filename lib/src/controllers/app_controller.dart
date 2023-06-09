import 'package:lukhu_assessment/src/controllers/abstract_controller.dart';

final class AppController extends AbstractController {
  @override
  void copyFromJson(Map<String, dynamic> json) {}

  @override
  Future<void> load() async {}

  @override
  void scheduleSave() async {}

  @override
  Map<String, dynamic> toJson() => {};

  @override
  void save() async {}

  String _selectedDuration = 'This Week';
  String get selectedDuration => _selectedDuration;
  set selectedDuration(String value) {
    _selectedDuration = value;
    notify;
  }

  @override
  void reset() {
    selectedDuration = "This Week";
  }
}
