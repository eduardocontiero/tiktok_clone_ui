import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_tok_clone_ui/core/utils/screen_size.dart';
import 'package:tik_tok_clone_ui/modules/tabs/widgets/friends/suggestion_friends.dart';

import '../../../core/mocks/mock.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.person_add),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.info_outline,
              size: 28,
            ),
          )
        ],
        title: Container(
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey[700]!.withOpacity(0.4)),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Encontrar amigos',
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenWidth(context, dividedBy: 6),
              ),
              SizedBox(
                height: 180,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText('TikTok é \nmais divertido com os amigos',
                        duration: const Duration(seconds: 3),
                        textStyle: GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 45)),
                    FadeAnimatedText('Não perca \nas publicações de \nseus amigos',
                        duration: const Duration(seconds: 3),
                        textStyle: GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 40)),
                    FadeAnimatedText('Acompanhe \no que seus amigos \nestão fazendo',
                        duration: const Duration(seconds: 3),
                        textStyle: GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 37)),
                    FadeAnimatedText('Conecte-se \ncom mais \namigos',
                        duration: const Duration(seconds: 3),
                        textStyle: GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 50)),
                    FadeAnimatedText('Conecte-se \ncom contatos',
                        duration: const Duration(seconds: 3),
                        textStyle: GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 50)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Você viu todas as publicações de seus amigos.', style: GoogleFonts.montserrat().copyWith(color: Colors.white, fontSize: 14)),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 45,
                width: screenWidth(context),
                decoration:
                    BoxDecoration(gradient: const LinearGradient(colors: [Colors.blueAccent, Colors.redAccent]), borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Container(
                      width: screenWidth(context) - 45,
                      height: 45,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        'Conecte-se a contatos',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w900, fontSize: 16),
                      ))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: screenWidth(context),
                height: 45,
                decoration: BoxDecoration(color: Colors.grey[700]!.withOpacity(0.2), borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text('Conecte-se com amigos do Facebook',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w900, fontSize: 15, color: Colors.white))),
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 7.5),
              ),
              Row(children: [
                Text(
                  'Contas sugeridas',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey, fontSize: 13),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.info_outline,
                  size: 16,
                  color: Colors.grey,
                )
              ]),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  return SuggestionFriends(friend: friends[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
