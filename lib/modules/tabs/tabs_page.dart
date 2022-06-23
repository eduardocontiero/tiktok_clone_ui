import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (page) {
            _changePage(page);
            if (page == 0) {
              Modular.to.navigate('/tabs/home');
            } else if (page == 1) {
              Modular.to.navigate('/tabs/discover');
            } else if (page == 2) {
              Modular.to.navigate('/tabs/video');
            } else if (page == 3) {
              Modular.to.navigate('/tabs/inbox');
            } else if (page == 4) {
              Modular.to.navigate('/tabs/profile');
            }
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          currentIndex: _pageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30), label: 'Profile'),
          ]),
      body: RouterOutlet(),
    );
  }
}
