import 'package:flutter_modular/flutter_modular.dart';

import 'modules/splash/splash_page.dart';
import 'modules/tabs/tabs_module.dart';

class AppModule extends Module {
  @override
 
  List<Bind<Object>> get binds => [
  
   
  ];

  @override
 
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SplashPage()),
    ModuleRoute('/tabs', module: TabsModule())
    
  ];

}