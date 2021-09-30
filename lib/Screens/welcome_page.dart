import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_practical/widgets/clipper.dart';

import 'package:demo_practical/widgets/Filed.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:demo_practical/widgets/welcome_image.dart';
import 'package:demo_practical/widgets/welcome_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Clipper(),
            const Welcometext(
              name: "Welcome to AppName",
              color: Color.fromARGB(255, 82, 97, 201),
            ),
            const SizedBox(
              height: 8,
            ),
            const Welcomeimage(),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    //
                  },
                  child: const Filed(
                    color: Color.fromARGB(255, 82, 97, 201),
                    //color: Color.fromARGB(255, 110, 126, 214),
                    name: 'Sign Up',
                    fontsize: 19,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    //
                  },
                  child: const Filed(
                    color: Color.fromARGB(255, 82, 97, 201),
                    //color: Color.fromARGB(255, 110, 126, 214),
                    name: 'Sign In',
                    fontsize: 19,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SignInButton(
                  Buttons.Google,
                  elevation: 10,
                  text: "Sign up with Google",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
