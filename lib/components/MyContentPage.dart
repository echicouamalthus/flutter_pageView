import 'package:flutter/material.dart';

class MyContentPage extends StatelessWidget {
  final String text;
  const MyContentPage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.red[400],
        ),
      ),
    );
  }
}
