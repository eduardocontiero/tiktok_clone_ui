import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class SuggestionFriends extends StatelessWidget {
  final User friend;
  const SuggestionFriends({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(friend.profileImageUrl),
      ),
      title:
          Text(friend.username, style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
      subtitle: Text('segue você', style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey, fontSize: 13)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: const Color(0xffee2318)),
            child: Text('Seguir de volta', style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontSize: 11.5)),
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
