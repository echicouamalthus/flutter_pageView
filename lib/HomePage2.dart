import 'package:flutter/material.dart';
import 'package:flutter_pageview/Pages/Page1.dart';
import 'package:flutter_pageview/Pages/Page2.dart';
import 'package:flutter_pageview/Pages/Page3.dart';
import 'package:flutter_pageview/Pages/Page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: PageView(
              controller: _controller,
              children: [Page1(), Page2(), Page3(), Page4()],
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: 4,
          effect: ExpandingDotsEffect(activeDotColor: Colors.red.shade400),
        )
      ]),
    );
  }
}
