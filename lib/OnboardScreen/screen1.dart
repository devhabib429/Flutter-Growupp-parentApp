import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment(0, 0),
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/smallfillcircle.png'))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 70, horizontal: 25),
            alignment: Alignment(0, 0),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/fillcircle.png'))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 60),
            alignment: Alignment(0, 0),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/toppng.png'))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 60),
            alignment: Alignment(0, 0),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/toppng.png'))),
          ),
          Container(
            alignment: Alignment(.65, -.6),
            child: Stack(children: [
              Container(
                height: 225,
                width: 175,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(227, 127, 234, 1),
                    borderRadius: BorderRadius.circular(35)),
              ),
              Positioned(
                right: 27,
                child: Container(
                  height: 220,
                  width: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/girl.png'))),
                ),
              )
            ]),
          ),
          Container(
            alignment: Alignment(-0.5, -.07),
            child: Stack(children: [
              Container(
                height: 220,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
              ),
              Positioned(
                top: 10,
                left: 1,
                child: Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/childholdbook.png'))),
                ),
              ),
            ]),
          ),
          Positioned(
            top: 510,
            left: 90,
            child: Container(
                child: RichText(
                    text: const TextSpan(
                        text:
                            "Understand Your\n Child's Strength And\n Weakness",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromRGBO(74, 42, 81, 1))))
                // decoration: BoxDecoration(
                // image: DecorationImage(image: AssetImage('images/smallfillcircle.png'))
                // ),
                ),
          ),
          Positioned(
            top: 630,
            left: 280,
            child: Container(
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
                    child: Icon(Icons.arrow_forward,color: Colors.white,),
                    
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
