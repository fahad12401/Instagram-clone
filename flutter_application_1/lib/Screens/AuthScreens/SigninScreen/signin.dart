import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/AuthScreens/SignupScreen/signup.dart';
import 'package:flutter_application_1/Screens/Homescreen/Homepage.dart';
import 'package:flutter_application_1/Services/FirebaseAuthservices.dart';
import 'package:flutter_application_1/Widgets/button.dart';
import 'package:flutter_application_1/Widgets/textfield.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'INSTAGRAM',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
              //user for email user input field
              emailfieldWidget(
                ctr: _emailController,
                lbltext: "username",
              ),
              //user for password input field
              emailfieldWidget(
                ctr: _passwordController,
                lbltext: "password",
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password ?',
                  ),
                ),
              ),
              //user for signin button
              buttonwidget(
                  name: "Login",
                  clr: Colors.blue,
                  sizing: 18,
                  //call the parameter
                  ontapp: () {
                    print(_passwordController.text);
                    print(_emailController.text);
                    AuthenticationService().signIn(
                      context,
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Homepage()),
                    // );
                  }),
              SizedBox(
                height: 20,
              ),
              Row(
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
                    'Log in with Facebook',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 20,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Does not have an account?'),
                  TextButton(
                    child: Text(
                      'Signup',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signup()),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
