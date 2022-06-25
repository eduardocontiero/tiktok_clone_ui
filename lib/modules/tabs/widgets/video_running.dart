import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:expandable_text/expandable_text.dart';
import 'package:marquee/marquee.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';

class VideoRunning extends StatelessWidget {
  const VideoRunning({Key? key}) : super(key: key);

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
            "@yeah_yees",
            style: style!.copyWith(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          ExpandableText(
            'video caption goes here! video caption goes here! video caption goes here! video caption goes here! video caption goes here! video caption goes here! video caption goes here!',
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
                  text: "audio name  -  ",
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
