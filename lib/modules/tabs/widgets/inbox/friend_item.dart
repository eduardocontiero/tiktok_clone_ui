import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class FriendItem extends StatelessWidget {
  final User friend;
  const FriendItem({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(friend.profileImageUrl),
                    ),
                    title: Text(friend.username,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
                    subtitle: Text('segue você', style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey, fontSize: 13)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 90,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(primary: const Color(0xffee2318)),
                            child: Text('Seguir', style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontSize: 11.5)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.close, color: Colors.grey[700], size: 20)
                      ],
                    ),
                  );
  }
}