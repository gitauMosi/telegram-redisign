// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CustomTile extends StatelessWidget {
  String title;
  IconData icon;
  Function() function;
  CustomTile({
    super.key,
    required this.title,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3, left: 5, top: 0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: FaIcon(
          icon,
          size: 20,
        ),
        title: Text(title),
      ),
    );
  }
}
