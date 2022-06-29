import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';

import '../../../core/mocks/mock.dart';
import '../widgets/home/video_detail.dart';
import '../widgets/home/video_tile.dart';
import '../widgets/sidebar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFollowingSelected = true;
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double appBarHeight= AppBar().preferredSize.height;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            leading: Center(child: Image.asset('assets/live_icon.png', width: 40,)),
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Feather.search),)
            ],
            title: Container(
              height: appBarHeight,
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isFollowingSelected = true;
                              });
                            },
                            child: Text("Following",
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 14,
                                    color: _isFollowingSelected ? Colors.white : Colors.grey[600],
                                    fontWeight: _isFollowingSelected ? FontWeight.bold : FontWeight.normal))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isFollowingSelected = false;
                              });
                            },
                            child: Text("For You",
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 14,
                                    color: !_isFollowingSelected ? Colors.white : Colors.grey[600],
                                    fontWeight: !_isFollowingSelected ? FontWeight.bold : FontWeight.normal))),
                      ),
                    ],
                  ),
              ),
              
            )),
        body: PageView.builder(
            onPageChanged: (int page) {
              setState(() {
                _pageIndex = page;
              });
            },
            scrollDirection: Axis.vertical,
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox.expand(
                      child: FittedBox(
                          fit: BoxFit.cover,
                          child: VideoTile(
                            video: videos[index],
                            currentIndex: index,
                            pageIndex: _pageIndex,
                          ))),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: screenHeight(context, dividedBy: 4),
                          child: VideoRunning(video: videos[index]),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: screenHeight(context, dividedBy: 1.75),
                          child: Sidebar(
                            video: videos[index],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            }));
  }
}
