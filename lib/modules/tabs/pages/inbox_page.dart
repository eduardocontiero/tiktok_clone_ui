import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';

import '../../../core/mocks/mock.dart';
import '../widgets/inbox/friend_item.dart';
import '../widgets/inbox/message_item.dart';
import '../widgets/inbox/notification_item.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Caixa de entrada',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w900, fontSize: 17, color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              height: 1.0,
              color: Colors.grey,
            )),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              FontAwesome.edit,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text("Novas atividades", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w900, fontSize: 16))),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(color: const Color(0xffee2318), borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                          '2',
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
                        )),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: activities.length,
                itemBuilder: (context, index) {
                  return NotificationItem(activity: activities[index]);
                },
                separatorBuilder: (context, index) {
                  return Container(padding: EdgeInsets.only(left: screenWidth(context, dividedBy: 5.5)), child: Divider(color: Colors.grey[500]));
                },
              ),
              Container(padding: EdgeInsets.only(left: screenWidth(context, dividedBy: 5.5)), child: Divider(color: Colors.grey[500])),
              const SizedBox(
                height: 10,
              ),
              Text("Mensagens", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w900, fontSize: 16)),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return MessageItem(message: messages[index]);
                },
                separatorBuilder: (context, index) {
                  return Container(padding: EdgeInsets.only(left: screenWidth(context, dividedBy: 5.5)), child: Divider(color: Colors.grey[500]));
                },
              ),
              Row(children: [
                Text(
                  'Encontrar amigos',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.info_outline,
                  size: 16,
                  color: Colors.grey[600],
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  return FriendItem(friend: friends[index],);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
