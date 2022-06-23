import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'core/ui/app_config_ui.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Tik Tok Clone',
      theme: AppConfigUI.theme,
      routeInformationParser: Modular.routeInformationParser, routerDelegate: Modular.routerDelegate,
    );
  }
}