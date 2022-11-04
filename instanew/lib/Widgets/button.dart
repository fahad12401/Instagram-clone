import 'package:flutter/material.dart';

class buttonwidget extends StatelessWidget {
  final String? name;
  final clr;
  final double? sizing;
  //pass function as parameter
  final Function ontapp;
  const buttonwidget(
      {Key? key,
      this.name,
      this.clr,
      required this.ontapp,
      required this.sizing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //initialize parameter
        ontapp();
      },
      child: Container(
        color: clr,
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Center(
            child: Text(
          name.toString(),
          style: TextStyle(
            fontSize: sizing,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
