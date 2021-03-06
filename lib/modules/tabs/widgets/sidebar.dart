import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';

import '../models/video_model.dart';

class Sidebar extends StatefulWidget {
  final Video video;
  const Sidebar({Key? key, required this.video}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13, color: Colors.white);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _profileImageButton(widget.video.postedBy.profileImageUrl),
        _sideBarItem(icon: Icon(Icons.favorite, color: Colors.white.withOpacity(0.75), size: 32), padding: const EdgeInsets.only(right: 15), label: widget.video.likes, style: style),
        _sideBarItem(
            icon: Icon(MaterialCommunityIcons.comment_processing, color: Colors.white.withOpacity(0.75), size: 32),
            padding: const EdgeInsets.only(right: 15),
            label: widget.video.comments,
            style: style),
        _sideBarItem(icon: Icon(Icons.bookmark, color: Colors.white.withOpacity(0.75), size: 32), padding: const EdgeInsets.only(right: 15), label: '1.2M', style: style),
        _sideBarItem(
          icon: _whatsAppIcon,
          label: '1.2M',
          style: style,
          padding: const EdgeInsets.only(right: 10),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: AnimatedBuilder(
              animation: _animationController,
              child: Stack(
                alignment: Alignment.center ,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/disc.png'),
                  ),
                  const CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage('https://picsum.photos/id/1062/400/400'),
                  )
                ],
              ),
              builder: (context, child) {
                return Transform.rotate(angle: 2 * pi * _animationController.value, child: child);
              }),
        )
      ],
    );
  }

  Widget get _whatsAppIcon => const CircleAvatar(
        maxRadius: 21,
        backgroundColor: Color(0xff48c558),
        child: Icon(FontAwesome.whatsapp, color: Colors.white, size: 30),
      );

  _profileImageButton(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: -10,
            child: Container(
              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(25)),
              child: const Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  _sideBarItem({required Widget icon, required String label, required TextStyle style, required EdgeInsetsGeometry padding}) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          icon,
          const SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: style,
          )
        ],
      ),
    );
  }
}
