import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_note.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) => NoteHome()));
    });

    return Scaffold(
      body: Center(
        child:
        Lottie.asset('assets/animations/Animation - 1719415540201.json',
            height: 300, width: 300),
      ),
    );
  }
}