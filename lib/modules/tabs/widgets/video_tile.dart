import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

import '../models/video_model.dart';

class VideoTile extends StatefulWidget {
  final Video video;
  final int pageIndex;
  final int currentIndex;
  VideoTile({Key? key, required this.video, required this.pageIndex, required this.currentIndex}) : super(key: key);

  @override
  State<VideoTile> createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {
  late VideoPlayerController _videoController;
  late Future _initializeVideoPlayer;
  bool _isVideoPlaying = true;

  @override
  void initState() {
    _videoController = VideoPlayerController.asset(widget.video.videoUrl);
    _initializeVideoPlayer = _videoController.initialize();
    _videoController.setLooping(true);
    _videoController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  void _videoControlls() {
    _isVideoPlaying ? _videoController.pause() : _videoController.play();

    setState(() {
      _isVideoPlaying = !_isVideoPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    (widget.pageIndex == widget.currentIndex && _isVideoPlaying) ? _videoController.play() : _videoController.pause();
    return Container(
      color: Colors.black,
      child: FutureBuilder(
          future: _initializeVideoPlayer,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return SizedBox(
                  width: _videoController.value.size.width,
                  height: _videoController.value.size.height,
                  child: GestureDetector(
                    onTap: () {
                      _videoControlls();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VideoPlayer(_videoController),
                        IconButton(
                          onPressed: () {
                            _videoControlls();
                          },
                          icon: Icon(Icons.play_arrow, color: Colors.white.withOpacity(_isVideoPlaying ? 0 : 0.5), size: 50),
                        )
                      ],
                    ),
                  ));
            }

            return Container(
              alignment: Alignment.center,
              child: Lottie.asset('assets/tiktok_loader.json'),
            );
          }),
    );
  }
}
