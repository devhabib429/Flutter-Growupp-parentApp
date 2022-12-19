import 'package:flutter/material.dart';
import 'package:statepicker/registerlogin/signup2.dart';

class signUp1 extends StatefulWidget {
  const signUp1({super.key});

  @override
  State<signUp1> createState() => _signUp1State();
}

class _signUp1State extends State<signUp1> {
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
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Name',
                                labelText: 'Name'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Email',
                                labelText: 'Email'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Id',
                                labelText: 'ID'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Phone Number',
                                labelText: 'Phone'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'WhatsApp',
                                labelText: 'WhatsApp'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Job Profile',
                                labelText: 'Job'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Home Status',
                                labelText: 'Status'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signUp2()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(74, 42, 81, 1),
                                  padding:
                                      EdgeInsets.fromLTRB(120, 15, 120, 15)),
                              child: Text("Next"))
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
