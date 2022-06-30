import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';
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
    _tabController = new TabController(vsync: this, length: 4, initialIndex: _currentIndex);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_add_alt_outlined,
                            color: Colors.black,
                            size: 29,
                          )),
                      Image.asset(
                        'assets/money.png',
                        width: 25,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'super_user',
                        style: style?.copyWith(fontWeight: FontWeight.w900, fontSize: 17, color: Colors.black),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.remove_red_eye_outlined, size: 29),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.menu, size: 29)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(40)),
                  child: Center(child: Text("Su", style: style?.copyWith(fontWeight: FontWeight.w900, fontSize: 29, color: Colors.white))),
                ),
                Positioned(
                    bottom: -7,
                    right: 0,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xff45D5FF),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 22,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth(context, dividedBy: 2.6),
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), color: Colors.white, borderRadius: BorderRadius.circular(3)),
                  child: Center(child: Text('Editar Perfil', style: style?.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black))),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: screenWidth(context, dividedBy: 8.5),
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), color: Colors.white, borderRadius: BorderRadius.circular(3)),
                  child: const Center(child: Icon(Icons.arrow_drop_down, size: 30)),
                ),
              ],
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
                child: Container(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  VideoGridList(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
