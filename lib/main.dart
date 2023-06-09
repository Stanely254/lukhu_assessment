import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/controllers/app_controller.dart';
import 'package:lukhu_assessment/src/controllers/auth_controller.dart';
import 'package:lukhu_assessment/src/services/login_service.dart';
import 'package:provider/provider.dart';
import 'src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appController = AppController();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: appController),
        ChangeNotifierProvider(create: (context) => AuthController()),
        //Service
        Provider(create: (c) => LoginService()),

        Provider<BuildContext>(create: (c) => c),
      ],
      child: const MyApp(),
    ),
  );
}
