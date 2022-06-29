import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:expandable_text/expandable_text.dart';
import 'package:marquee/marquee.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';

import '../../models/video_model.dart';



class VideoRunning extends StatelessWidget {
  final Video video;
  const VideoRunning({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.bodyText1;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "@${video.postedBy.username}",
            style: style!.copyWith(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          ExpandableText(
            video.caption,
            style: style.copyWith(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w100),
            expandText: 'more',
            collapseText: 'less',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 2,
            linkColor: Colors.grey,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Icon(
                CupertinoIcons.music_note_2,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 20,
                width: screenWidth(context, dividedBy: 2),
                child: Marquee(
                  text: "${video.audioName}  -  ",
                  velocity: 10,
                  style: style.copyWith(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w100),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
