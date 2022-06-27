import 'package:flutter_modular/flutter_modular.dart';

import 'pages/friends_page.dart';
import 'pages/home_page.dart';
import 'pages/inbox_page.dart';
import 'pages/profile_page.dart';
import 'pages/tabs_page.dart';



class TabsModule extends Module {

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context, args) => TabsPage(), children: [
      ChildRoute('/home', child: (context, args) => HomePage()),
      ChildRoute('/friends', child: (context, args) => FriendsPage()),
      ChildRoute('/inbox', child: (context, args) => InboxPage()),
      ChildRoute('/profile', child: (context, args) => ProfilePage()),
    ])
  ];

}