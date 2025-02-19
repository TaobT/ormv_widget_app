import 'package:flutter/material.dart';
import 'package:ormv_widget_app/config/router/app_router.dart';
import 'package:ormv_widget_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme()
    );
  }
}
