import 'package:flutter/material.dart';

import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';

import '../../../core/mocks/mock.dart';
import '../widgets/sidebar.dart';
import '../widgets/video_detail.dart';
import '../widgets/video_tile.dart';

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
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _isFollowingSelected = true;
                    });
                  },
                  child: Text("Following",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: _isFollowingSelected ? 18 : 14, color: _isFollowingSelected ? Colors.white : Colors.grey))),
              Text(
                "   |   ",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14, color: Colors.grey),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _isFollowingSelected = false;
                    });
                  },
                  child: Text("For You",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: !_isFollowingSelected ? 18 : 14, color: !_isFollowingSelected ? Colors.white : Colors.grey))),
            ],
          ),
        ),
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
                  SizedBox.expand(child: FittedBox(
                    fit: BoxFit.cover,
                    child: VideoTile(video: videos[index], currentIndex: index, pageIndex: _pageIndex,))),
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
