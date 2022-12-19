import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:statepicker/OnboardScreen/screen1.dart';
import 'package:statepicker/OnboardScreen/screen2.dart';
import 'package:statepicker/OnboardScreen/screen3.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _control = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
      PageView(
        controller: _control,
        children: const [
          screen1(),
          screen2(),
          screen3(),
        ],
      ),
      //Dot Indicator
      Container(
          alignment: Alignment(-.9, 0.90),
          child: SmoothPageIndicator(
            controller: _control,
            count: 3,
            effect: const WormEffect(
              dotColor: Colors.white,
              dotHeight: 12,
              dotWidth: 12,
              offset: 12,
              activeDotColor: Color.fromRGBO(74, 42, 81, 1),
            ),
          )),
    ]));
  }
}
