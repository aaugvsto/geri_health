import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavigationBarTemplate extends StatefulWidget {
  List<BottomNavigationBarItem> items = [];

  int currentIndex = 0;
  List screens;
  dynamic onTap;

  BottomNavigationBarTemplate({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.screens,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomNavigationBarTemplate> createState() =>
      _BottomNavigationBarTemplateState();
}

class _BottomNavigationBarTemplateState
    extends State<BottomNavigationBarTemplate> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: widget.items,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
