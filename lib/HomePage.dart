import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Pages/Page1.dart';
import 'Pages/Page2.dart';
import 'Pages/Page3.dart';
import 'Pages/Page4.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: [Page1(), Page2(), Page3(), Page4()],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                axisDirection: Axis.vertical,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.grey, activeDotColor: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
