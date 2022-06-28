import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import '../widgets/custom_bottom_navigation_bar.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _pageIndex = 0;

  void _changePage(int page) {
    setState(() {
      _pageIndex = page;
    });

    if (page == 0) {
      Modular.to.navigate('/tabs/home');
    } else if (page == 1) {
      Modular.to.navigate('/tabs/friends');
    } else if (page == 2) {
      Modular.to.navigate('/tabs/inbox');
    } else if (page == 3) {
      Modular.to.navigate('/tabs/profile');
    }
  }

  @override
  void initState() {
    Modular.to.navigate('/tabs/home');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(selectedPageIndex: _pageIndex, onIconTap: _changePage),
      body: RouterOutlet(),
    );
  }
}
