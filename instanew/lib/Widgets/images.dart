import 'package:flutter/material.dart';

class imagewidget extends StatelessWidget {
  const imagewidget({Key? key, this.imgname, this.rd, this.radus})
      : super(key: key);
  final String? imgname;
  final double? radus;
  final rd;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imgname!),
          radius: radus,
        )
      ],
    );
  }
}
