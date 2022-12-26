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
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.23,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft, 
                end: Alignment.centerRight, 
                colors: [
                  Color.fromRGBO(94,26,117,1),
                  Color.fromRGBO(70,20,97,1)
                ])
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 100,
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          child: Text("H"),
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Column(
                          children: [
                            Text("Hey Mr.Habib",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Thursday, 08 July",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
                  ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 100,
                  width: 100,
                  child: Icon(Icons.notifications_active,color: Colors.white,),
                  )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.23,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                begin: Alignment.centerLeft, 
                end: Alignment.centerRight, 
                colors: [
                  Color.fromRGBO(118,60,137,1),
                  Color.fromRGBO(209,70,134,1)
                ])
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width*.5,
                  // color: Colors.green,
                  child: Column(
                    children: const [
                      SizedBox(height: 25),
                      Text("Transform",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 32),
                        child: Text("Under Your Child's\n Strength And Weakness",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 12),),
                      ),
                    ],
                  ),
                ),
                 Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width*.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/arrow.png"),fit: BoxFit.cover)
                  ),
                )
              ],
            ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.46,
            // color: Colors.green,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(child: Text("How It Works",style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              ],
            ),
          ),         
        ],
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
