import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    _loadingSplash();
    super.initState();
  }

  Future<void> _loadingSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    Modular.to.pushReplacementNamed('/tabs');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image.asset('assets/tiktok_logo.png', width: 130,),
      ),
    );
  }
}