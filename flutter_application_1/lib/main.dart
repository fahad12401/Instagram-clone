
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/AuthScreens/SigninScreen/signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Signin(),
    );
  }
}
