import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticon_face;

  const EmoticonFace({Key? key, required this.emoticon_face}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(16),
        child: Text(
          emoticon_face,
          style: TextStyle(fontSize: 28),
        ));
  }
}
