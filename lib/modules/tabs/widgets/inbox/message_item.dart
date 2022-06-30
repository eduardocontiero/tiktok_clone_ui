import 'package:flutter/material.dart';

import '../../models/message_model.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  const MessageItem({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(message.user.profileImageUrl),
      ),
      title: Text(message.user.username, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w900, fontSize: 16)),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Text(message.message, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 13, color: Colors.grey[700])),
      ),
      trailing: Text(message.messagesCount, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 13, color: Colors.grey[500])),
    );
  }
}
