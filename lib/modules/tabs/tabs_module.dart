import 'package:flutter_modular/flutter_modular.dart';

import 'tabs_page.dart';

class TabsModule extends Module {

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => TabsPage())
  ];

}