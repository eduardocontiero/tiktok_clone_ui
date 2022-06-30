import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';
import 'package:tik_tok_clone_ui/modules/tabs/widgets/profile/custom_profile_appbar.dart';
import 'package:tik_tok_clone_ui/modules/tabs/widgets/profile/profile_avatar.dart';
import 'package:tik_tok_clone_ui/modules/tabs/widgets/profile/video_grid_list.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4, initialIndex: _currentIndex);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CustomProfileAppbar(),
            const SizedBox(
              height: 20,
            ),
            const ProfileAvatar(),
            const SizedBox(
              height: 15,
            ),
            Text("@super_user", style: style?.copyWith(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("150", style: style?.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
                    Text("Seguindo", style: style?.copyWith(fontSize: 13, color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    Text("72", style: style?.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
                    Text("Seguidores", style: style?.copyWith(fontSize: 13, color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    Text("0", style: style?.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
                    Text("Curtidas", style: style?.copyWith(fontSize: 13, color: Colors.grey)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: screenWidth(context),
              height: 40,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.8,
                  ),
                ),
              ),
              child: TabBar(
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                tabs: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });

                      _tabController.animateTo(_currentIndex);
                    },
                    icon: Icon(
                      MaterialCommunityIcons.video_outline,
                      color: _currentIndex == 0 ? Colors.black : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                      _tabController.animateTo(_currentIndex);
                    },
                    icon: Icon(Icons.lock_outline, color: _currentIndex == 1 ? Colors.black : Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                      _tabController.animateTo(_currentIndex);
                    },
                    icon: Icon(Icons.favorite_outline, color: _currentIndex == 2 ? Colors.black : Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 3;
                      });
                      _tabController.animateTo(_currentIndex);
                    },
                    icon: Icon(Icons.bookmark_outline, color: _currentIndex == 3 ? Colors.black : Colors.grey),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  const VideoGridList(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
