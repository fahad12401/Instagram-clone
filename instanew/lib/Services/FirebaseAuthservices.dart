import 'package:flutter/material.dart';
import 'package:instanew/Screens/Homescreen/Homepage.dart';

class AuthenticationService {
  final auth = FirebaseAuth.instance;

  //Function for signout from firebase
  // Future<void> signOut(BuildContext context) async {
  //   await auth.signOut().then((value) => Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => SignInScreen())));
  // }

//Function for signing in with email and password
  signIn(BuildContext context, {String? email, String? password}) async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: email.toString(), password: password.toString())
          .then(
            (value) => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homepage())),
          );
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

//Function for updating the user's pasword
  // updatepasswordusingEmail(BuildContext context, {String? email}) async {
  //   try {
  //     await auth.sendPasswordResetEmail(email: email.toString()).then((value) =>
  //         Navigator.push(context,
  //             MaterialPageRoute(builder: (context) => SignInScreen())));
  //   } on FirebaseAuthException catch (e) {
  //     return e.message;
  //   }
  // }

//Function for sending OTP to user's phone number
  // verifyPhone(BuildContext context, {String? phone}) async {
  //   try {
  //     await auth
  //         .verifyPhoneNumber(
  //           phoneNumber: phone.toString(),
  //           timeout: Duration(seconds: 60),
  //           codeAutoRetrievalTimeout: (String verificationId) {
  //             // Auto-resolution timed out...
  //           },
  //           codeSent: (String verificationId, int? resendcode) async {
  //             // Update the UI - wait for the user to enter the SMS code
  //             String smsCode = 'xxxx';

  //             // Create a PhoneAuthCredential with the code
  //             PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //                 verificationId: verificationId, smsCode: smsCode);

  //             // Sign the user in (or link) with the credential
  //             await auth.signInWithCredential(credential);
  //           },
  //           verificationCompleted: (PhoneAuthCredential credential) async {
  //             await auth.signInWithCredential(credential).then((value) {
  //               print("You are logged in successfully");
  //             });
  //           },
  //           verificationFailed: (FirebaseAuthException e) {
  //             print(e.message);
  //           },
  //         )
  //         .then((value) => Navigator.push(
  //             context, MaterialPageRoute(builder: (context) => OTPScreen())));
  //   } on FirebaseAuthException catch (e) {
  //     return e.message;
  //   }
  // }

//Function for signup with email and password
  signUp(BuildContext context, {String? email, String? password}) async {
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: email.toString(), password: password.toString())
          .then(
            (value) => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homepage())),
          );
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
