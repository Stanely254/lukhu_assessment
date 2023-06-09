import 'package:lukhu_assessment/src/_internal/common/http_client.dart';
import 'package:lukhu_assessment/src/data/user.dart';
import 'package:lukhu_assessment/src/services/service_result.dart';

class LoginService {
  final String _baseUrl = "https://dummyjson.com/auth/login";

  Future<ServiceResult<User?>> login(
    Map<String, String> post,
  ) async {
    HttpResponse? response = await HttpClient.post(
      _baseUrl,
      body: post,
    );

    return ServiceResult(response, _parseUserData);
  }

  User? _parseUserData(Map<String, dynamic> content) {
    return User.fromJson(content);
  }
}
