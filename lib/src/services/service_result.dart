import 'dart:convert';
import 'dart:developer' as dev;
import 'package:lukhu_assessment/src/_internal/common/http_client.dart';

class ServiceResult<T> {
  final HttpResponse response;
  T? content;

  bool get parseError => content == null;
  bool get success => response.success && !parseError;

  ServiceResult(this.response, T Function(Map<String, dynamic>) parser) {
    if (response.body!.isNotEmpty && response.success) {
      try {
        content = parser.call(json.decode(response.body!));
      } on FormatException catch (e) {
        dev.log('ParserError: ${e.message}');
      }
    }
  }
}
