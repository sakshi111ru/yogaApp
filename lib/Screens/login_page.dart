import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:demo_practical/widgets/button.dart';
import 'package:demo_practical/widgets/clipper.dart';

import 'package:demo_practical/widgets/welcome_text.dart';
import 'package:demo_practical/widgets/welcome_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";

  // Create a text controller and use it to retrieve the current value of the TextField.

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Clipper(
              height: 195,
            ),
            const Welcometext(
              name: "Login Here",
              color: Color.fromARGB(255, 82, 97, 201),
            ),
            const Welcomeimage(),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    //TextFormField for Email
                    TextFormField(
                      autofocus: false,
                      obscureText: false,
                      decoration: const InputDecoration(
                        fillColor: Colors.white54,
                        filled: true,
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 110, 126, 214),
                              width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 110, 126, 214),
                                width: 2)),
                        prefixIcon: Icon(
                          CupertinoIcons.mail,
                          color: Color.fromARGB(255, 110, 126, 214),
                        ),
                        hintText: 'Email',
                      ),

                      //validation of form

                      controller: emailController,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Email';
                        } else if (!value.contains('@')) {
                          return 'Please Enter Valid Email ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),

                    //TextFormField for Password

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        fillColor: Colors.white54,
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 110, 126, 214),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 110, 126, 214),
                              width: 2),
                        ),
                        prefixIcon: Icon(
                          CupertinoIcons.lock_slash,
                          color: Color.fromARGB(255, 110, 126, 214),
                        ),
                        hintText: 'Password',
                      ),

                      //validation of form

                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password';
                        }
                        return null;
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 175),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 82, 97, 201)),
                          )),
                    ),

                    //sign in button

                    Button(
                      color: const Color.fromARGB(255, 82, 97, 201),
                      //color: Color.fromARGB(255, 110, 126, 214),
                      name: 'Sign In',
                      fontsize: 19,
                      function: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            email = emailController.text;
                            password = passwordController.text;
                          });
                        }
                        
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("   Don't have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'SignUp',
                            style: TextStyle(
                                color: Color.fromARGB(255, 82, 97, 201)),
                          ),
                        ),
                      ],
                    ),
                    const Center(child: Text('or')),
                    //google sign Button
                    SignInButton(
                      Buttons.Google,
                      elevation: 5,
                      text: "Sign in with Google",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  
}
