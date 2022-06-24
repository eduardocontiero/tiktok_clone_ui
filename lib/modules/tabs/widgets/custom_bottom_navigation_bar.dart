import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedPageIndex;
  final Function onIconTap;
  const CustomBottomNavigationBar({Key? key, required this.selectedPageIndex, required this.onIconTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final barHeight = screenHeight(context )* 0.06;
    final style = Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 11, fontWeight: FontWeight.bold);
    return BottomAppBar(
      color: selectedPageIndex == 0 ? Colors.black : Colors.white,
      child: SizedBox(
        height: barHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _bottomBarNavItem(context, index: 0, label: 'Home', textStyle: style, icon: Icons.home),
            _bottomBarNavItem(context, index: 1, label: 'Discover', textStyle: style, icon: Icons.search),
            _addVideoNavItem(barHeight),
            _bottomBarNavItem(context, index: 2, label: 'Inbox', textStyle: style, icon: Feather.inbox),
            _bottomBarNavItem(context, index: 3, label: 'Home', textStyle: style, icon: Icons.person_outline),
          ],
        ),
      ),
    );
  }

  _bottomBarNavItem(BuildContext context, {required int index, required String label, required TextStyle textStyle, required IconData icon}) {
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Theme.of(context).primaryColor : Colors.grey;

    if (isSelected && selectedPageIndex == 0) {
      iconAndTextColor = Colors.white;
    }

    return GestureDetector(
      onTap: () {
        onIconTap(index);
        if (index == 0) {
          Modular.to.navigate('/tabs/home');
        } else if (index == 1) {
          Modular.to.navigate('/tabs/discover');
        } else if (index == 2) {
          Modular.to.navigate('/tabs/inbox');
        } else if (index == 3) {
          Modular.to.navigate('/tabs/profile');
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: iconAndTextColor,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            label,
            style: textStyle.copyWith(color: iconAndTextColor),
          )
        ],
      ),
    );
  }

  _addVideoNavItem(double height) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: height - 15,
        width: 48,
        decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blueAccent, Colors.redAccent]), borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Container(
            width: 41,
            height: height - 15,
            decoration: BoxDecoration(color: selectedPageIndex == 0 ? Colors.white : Colors.black, borderRadius: BorderRadius.circular(8)),
            child: Icon(
              Icons.add,
              color: selectedPageIndex == 0 ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
