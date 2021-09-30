import 'package:flutter/material.dart';

class Welcomeimage extends StatelessWidget {
  const Welcomeimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/welcome_image.jpg"),
    );
  }
}
