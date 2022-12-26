import 'package:flutter/material.dart';
import 'package:statepicker/dashboard/dashboard1.dart';

class signUp3 extends StatefulWidget {
  const signUp3({super.key});

  @override
  State<signUp3> createState() => _signUp3State();
}

class _signUp3State extends State<signUp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/rect.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 100,
              ),
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.white,
                ),
                Positioned(
                  bottom: 0,
                  right: -100,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/eclipse.png'),
                    )),
                  ),
                ),
              ]),
            ],
          ),
          Center(
            child: Container(
                margin: EdgeInsets.all(40),
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("images/titlelogo.png"),
                          )),
                        ),
                        Container(
                          height: 25,
                          child: Text("Parent Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 163, 73, 1))),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Container(
                          child: Column(
                        children: [
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/signup3.png"),
                                    fit: BoxFit.contain)),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'User ID',
                                labelText: 'User ID'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Password',
                                labelText: 'Password'),
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => dasboard1()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(74, 42, 81, 1),
                                  padding:
                                      EdgeInsets.fromLTRB(100, 15, 100, 15)),
                              child: Text("Create"))
                        ],
                      )),
                    )
                  ],
                )),
          )
        ]),
      ),
    ));
  }
}
