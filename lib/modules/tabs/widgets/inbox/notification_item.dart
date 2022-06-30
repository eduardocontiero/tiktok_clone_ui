import 'package:flutter/material.dart';

import 'package:tik_tok_clone_ui/modules/tabs/models/activity_model.dart';

class NotificationItem extends StatelessWidget {
  final Activity activity;
  const NotificationItem({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(activity.user.profileImageUrl),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(activity.user.username,
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)),
                          RichText(
                            text: TextSpan(
                              text: 'acabou de ver o vídeo que você compartilhou  ',
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14, color: Colors.grey[700]),
                              children: const <TextSpan>[
                                TextSpan(text: '2 sem', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.network(
                      activity.activityThumb,
                      width: 40,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(4)),
                          child:
                              Center(child: Text('Ignorar', style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold, fontSize: 14))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: const Color(0xffee2318),
                                  width: 1,
                                ),
                                color: const Color(0xffee2318)),
                            child: Center(
                              child: Text('Seguir',
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
