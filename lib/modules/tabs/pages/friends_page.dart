import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.person_add),
          onPressed: () {},
        ),
        actions: const [
           Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.info_outline, size: 28,),
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
    );
  }
}
