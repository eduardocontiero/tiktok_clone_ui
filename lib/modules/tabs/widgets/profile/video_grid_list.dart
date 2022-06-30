import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import '../../../../core/mocks/mock.dart';

class VideoGridList extends StatelessWidget {
  const VideoGridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3
    ), 
    itemCount: videoThumbs.length,
    itemBuilder: (context, index){
      return CachedNetworkImage(imageUrl: videoThumbs[index], fit: BoxFit.cover,);
    },

    );
  }
}