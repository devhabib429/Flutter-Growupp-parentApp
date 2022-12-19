import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class dasboard1 extends StatefulWidget {
  const dasboard1({super.key});

  @override
  State<dasboard1> createState() => _dasboard1State();
}

class _dasboard1State extends State<dasboard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
          // color: Color.fromRGBO(70,20,97,1)
          gradient: LinearGradient(
            begin: Alignment.centerLeft, 
            end: Alignment.centerRight, 
            colors: [
              Color.fromRGBO(94,26,117,1),
              Color.fromRGBO(70,20,97,1)
            ])
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        backgroundColor: Colors.white,
        snakeShape: SnakeShape.indicator,
        snakeViewColor: Color.fromRGBO(74, 42, 81, 1),
        height: 60,
        elevation: 5,
        onTap: (value) {
          print(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromRGBO(74, 42, 81, 1)),
              label: 'tickets'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.health_and_safety,
                color: Color.fromRGBO(74, 42, 81, 1),
              ),
              label: 'tickets'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.youtube_searched_for,
                color: Color.fromRGBO(74, 42, 81, 1),
              ),
              label: 'tickets'),
        ],
      ),
    );
  }
}
