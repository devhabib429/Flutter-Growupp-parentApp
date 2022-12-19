import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Positioned(
                top: 140,
                right: 130,
                child: Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.symmetric(vertical: 100, horizontal: 45),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/pizza.png'))),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                margin: EdgeInsets.symmetric(vertical: 110, horizontal: 85),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/parent.png'))),
              ),
              Positioned(
                left: 30,
                child: Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 65),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/smalldot.png'))),
                ),
              ),
            ]),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: RichText(
                    text: const TextSpan(
                        text:
                            "Step By Step \n Learning Progress Of \n Your Child",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromRGBO(74, 42, 81, 1))))
                // decoration: BoxDecoration(
                // image: DecorationImage(image: AssetImage('images/smallfillcircle.png'))
                // ),
                ),
            Container(
              margin: EdgeInsets.only(left: 220, top: 70),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(74, 42, 81, 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
