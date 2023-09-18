import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key, required this.items});

  final List<Widget> items;

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.amber,
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [],
      ),
    );
  }
}
