import 'package:flutter/material.dart';

class textwidget extends StatelessWidget {
  final String? personame;
  final String? username;
  final font;
  const textwidget({Key? key, this.personame, this.username, this.font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            personame.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            username.toString(),
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
