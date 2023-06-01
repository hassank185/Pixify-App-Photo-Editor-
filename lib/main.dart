import 'package:flutter/material.dart';
import 'package:pixify/features/global/const/app_route_const.dart';
import 'package:pixify/features/global/theme/app_theme.dart';
import 'package:pixify/features/routes/on_generate_route.dart';
import 'injection_container.dart' as di;
void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Pixify",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      initialRoute: AppRouteConst.getStarted,
      onGenerateRoute: OnGenerateRoute.generate,
    );
  }
}
