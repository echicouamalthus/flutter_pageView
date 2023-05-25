import 'package:flutter/material.dart';
import 'package:flutter_pageview/components/MyContentPage.dart';



class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MyContentPage(text: 'Page1');
  }
}