import 'package:flutter/material.dart';
import '../core/config/app_config.dart';
import '../main_common.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appConfig.appName,
      debugShowCheckedModeBanner: appConfig.enableLogs,
      home: const Scaffold(
        body: Center(
          child: Text("Task Manager"),
        ),
      ),
    );
  }
}