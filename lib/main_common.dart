import 'package:flutter/material.dart';
import 'core/config/app_config.dart';
import 'core/flavor/flavor.dart';
import 'app/app.dart';
import 'core/di/injection_container.dart' as di;

late AppConfig appConfig;

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await di.init();

  switch (currentFlavor) {
    case Flavor.dev:
      appConfig = const AppConfig(
        appName: "Task Manager Dev",
        baseUrl: "https://dev-api.taskmanager.com",
        enableLogs: true,
        enableMockApi: true,
      );
      break;

    case Flavor.prod:
      appConfig = const AppConfig(
        appName: "Task Manager",
        baseUrl: "https://api.taskmanager.com",
        enableLogs: false,
        enableMockApi: false,
      );
      break;
  }

  runApp(const MyApp());
}
