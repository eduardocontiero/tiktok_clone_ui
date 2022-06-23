import 'package:flutter_modular/flutter_modular.dart';

import 'pages/discover_page.dart';
import 'pages/home_page.dart';
import 'pages/inbox_page.dart';
import 'pages/profile_page.dart';
import 'pages/tabs_page.dart';



class TabsModule extends Module {

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => TabsPage(), children: [
      ChildRoute('/home', child: (context, args) => HomePage()),
      ChildRoute('/discovers', child: (context, args) => DiscoverPage()),
      ChildRoute('/inbox', child: (context, args) => InboxPage()),
      ChildRoute('/profile', child: (context, args) => ProfilePage()),
    ])
  ];

}