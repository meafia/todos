import 'package:flutter/material.dart';

class TabLabel extends StatelessWidget {
  final String label;

  TabLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: Text(label),
      ),
    );
  }
}
