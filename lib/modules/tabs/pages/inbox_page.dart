import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/mocks/mock.dart';

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
            icon: Icon(
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
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: activities.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(activities[index].user.profileImageUrl),
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
                                          Text(activities[index].user.username,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)),
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
                                      activities[index].activityThumb,
                                      width: 40,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                                        decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(4)),
                                        child:
                                            Text('Ignorar', style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold, fontSize: 14)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
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
                                          child: Text('Seguir',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white))),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
