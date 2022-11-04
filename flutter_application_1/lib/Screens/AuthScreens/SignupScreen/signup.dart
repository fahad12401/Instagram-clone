import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/AuthScreens/SigninScreen/signin.dart';
import 'package:flutter_application_1/Screens/Homescreen/Homepage.dart';
import 'package:flutter_application_1/Services/FirebaseAuthservices.dart';
import 'package:flutter_application_1/Widgets/button.dart';

import 'package:flutter_application_1/Widgets/textfield.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('INSTAGRAM',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30)),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Signup to see photos and videos from your friends.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue,
                        height: 40,
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/fb.png'))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Log in With Facebook',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                      )),
                      Text('OR'),
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  emailfieldWidget(
                    ctr: _emailController,
                    lbltext: 'Mobile Number or E-mail',
                  ),
                  emailfieldWidget(
                    lbltext: 'Full Name',
                  ),
                  emailfieldWidget(
                    lbltext: 'Username ',
                  ),
                  emailfieldWidget(
                    ctr: _passwordController,
                    lbltext: 'Password',
                  ),
                  Text(
                    'People who use our service may have uploaded your contact information to Instagram. Learn More',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(255, 126, 112, 112),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'By signing up, you agree to our Terms , Privacy Policy and Cookies Policy .',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(255, 126, 112, 112),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  buttonwidget(
                    clr: Colors.blue,
                    name: 'Signup',
                    sizing: 20,
                    ontapp: () {
                      AuthenticationService().signUp(
                        context,
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim(),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signin()),
                          );
                        },
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
