import 'package:flutter/material.dart';
import 'core/config/app_config.dart';
import 'core/flavor/flavor.dart';
import 'app/app.dart';

late AppConfig appConfig;

void mainCommon() {
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