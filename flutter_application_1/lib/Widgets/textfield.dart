import 'package:flutter/material.dart';

class emailfieldWidget extends StatelessWidget {
  final ctr;
  final lbltext;
  const emailfieldWidget({Key? key, this.lbltext, this.ctr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: ctr,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Color.fromARGB(179, 253, 243, 243),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          labelText: lbltext.toString(),
        ),
      ),
    );
  }
}
