// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StoryWidget extends StatelessWidget {
  String img;
  StoryWidget({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: 
        AssetImage(img), fit: BoxFit.cover)
      ),
    );
  }
}
