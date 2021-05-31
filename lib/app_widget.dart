import 'package:flutter/material.dart';
import 'package:notes/core/app_themes.dart';

import 'core/app_routes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.light,
      title: "Notes",
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.namedRoutes(),
    );
  }
}
