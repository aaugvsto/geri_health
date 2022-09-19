import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ignore: must_be_immutable
class TextBoxTemplate extends StatelessWidget {
  MaskTextInputFormatter? mask;
  String? hintText, label;
  dynamic suffix;
  Icon? suffixIcon;
  TextInputType? kbType;
  TextEditingController? controller;

  TextBoxTemplate({
    Key? key,
    this.hintText,
    this.suffix,
    this.suffixIcon,
    required this.kbType,
    this.controller,
    this.mask,
    this.label,
  }) : super(key: key);

  var maskDefault = MaskTextInputFormatter(mask: '');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        inputFormatters: [mask ?? maskDefault],
        decoration: InputDecoration(
          label: Text(label ?? ""),
          hintText: hintText,
          suffix: suffix,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.white70,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        keyboardType: kbType,
      ),
    );
  }
}
