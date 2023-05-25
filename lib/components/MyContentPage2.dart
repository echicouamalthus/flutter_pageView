import 'package:flutter/material.dart';

class MyContentPage2 extends StatelessWidget {
  final Color? bg;
  final String text;
  const MyContentPage2({super.key,required this.bg, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
