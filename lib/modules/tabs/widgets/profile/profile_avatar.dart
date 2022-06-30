import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var style = Theme.of(context).textTheme.bodyText1;
      
    return Stack(
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
            );
  }
}