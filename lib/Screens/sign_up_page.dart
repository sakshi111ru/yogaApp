import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_practical/screens/login_page.dart';
import 'package:demo_practical/widgets/button.dart';
import 'package:demo_practical/widgets/welcome_text.dart';
import 'package:demo_practical/widgets/welcome_image.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";
  var conformPassword = "";

  // Create a text controller and use it to retrieve the current value of the TextField.

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    conformPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Welcomeimage(),
            ),
            const Welcometext(
              name: "Create Your Account",
              color: Color.fromARGB(255, 82, 97, 201),
            ),
            const SizedBox(height: 30),
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
                    const SizedBox(height: 20),

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
                    const SizedBox(height: 20),

                    //TextFormField for Confrom Password

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
                          Icons.lock_open_outlined,
                          color: Color.fromARGB(255, 110, 126, 214),
                        ),
                        hintText: 'Confrom Password',
                      ),

                      //validation of form

                      controller: conformPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    //sign up button

                    Button(
                      color: const Color.fromARGB(255, 82, 97, 201),
                      //color: Color.fromARGB(255, 110, 126, 214),
                      name: 'Sign Up',
                      fontsize: 19,
                      function: () {
                        // Validate returns true if the form is valid , otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            email = emailController.text;
                            password = passwordController.text;
                            conformPassword = conformPasswordController.text;
                          });
                        }
                        
                        
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, a, b) =>
                                      const LoginPage(),
                                  transitionDuration:
                                      const Duration(seconds: 0)),
                            );
                          },
                          child: const Text(
                            'Login here',
                            style: TextStyle(
                                color: Color.fromARGB(255, 82, 97, 201)),
                          ),
                        ),
                      ],
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


