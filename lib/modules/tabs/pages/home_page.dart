import 'package:flutter/material.dart';

import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';

import '../widgets/sidebar.dart';
import '../widgets/video_running.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFollowingSelected = true;
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
            onPageChanged: (int page) => {print('page changed')},
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: Colors.purple,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: screenHeight(context, dividedBy: 4),
                          child: VideoRunning(),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: screenHeight(context, dividedBy: 1.75),
                          color: Colors.pink,
                          child: Sidebar(),
                        ),
                      ),
                    ],
                  )
                ],
              );
            }));
  }
}
