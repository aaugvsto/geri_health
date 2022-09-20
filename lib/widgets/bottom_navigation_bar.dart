import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavigationBarTemplate extends StatefulWidget {
  List<BottomNavigationBarItem> items = [];

  int currentIndex = 1;
  List screens;
  dynamic onTap;
  Color? colorItem;

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
      selectedItemColor: trocaCorItem(widget.currentIndex),
      backgroundColor: trocaCorBackground(widget.currentIndex),
      type: BottomNavigationBarType.fixed,
      items: widget.items,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }

  Color trocaCorBackground(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Colors.lightBlue;
      case 1:
        return Colors.teal;
      case 2:
        return Colors.lightBlue;
      default:
        return Colors.white;
    }
  }

  Color? trocaCorItem(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Colors.white;
      case 1:
        return Colors.white;
      case 2:
        return Colors.white;
      default:
        return Colors.lightBlue;
    }
  }
}
