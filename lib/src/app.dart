import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lukhu_assessment/src/_internal/components/no_glow_behaviour.dart';
import 'package:lukhu_assessment/src/commands/bootstrap_command.dart';
import 'package:lukhu_assessment/src/commands/check_connection_command.dart';
import 'package:lukhu_assessment/src/controllers/app_controller.dart';
import 'package:lukhu_assessment/src/globals.dart';
import 'package:provider/provider.dart';

import 'pages/welcome/welcome_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<WelcomePageState> _welcomePageKey = GlobalKey();
  late CheckConnectionCommand _connectionCommand;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<AppController>(context, listen: false).load().then((value) =>
          {
            _connectionCommand = CheckConnectionCommand(context)..execute(true)
          });
      BootstrapCommand(context).execute();
    });
  }

  @override
  void dispose() {
    _connectionCommand.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lukhu Assessment',
      navigatorKey: AppGlobals.rootNavKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      home: WelcomePage(
        key: _welcomePageKey,
      ),
      builder: (context, child) {
        if (child == null) return Container();
        return Builder(builder: (c) {
          return ScrollConfiguration(
            behavior: NoGlowScrollBehavior(),
            child: child,
          );
        });
      },
    );
  }
}
