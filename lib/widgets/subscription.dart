import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class subscriptionTemplate extends StatelessWidget {
  String text;
  Color? colorText;

  subscriptionTemplate({Key? key, required this.text, this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colorText, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
