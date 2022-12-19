import 'package:flutter/material.dart';
import 'package:statepicker/registerlogin/signup3.dart';

class signUp2 extends StatefulWidget {
  const signUp2({super.key});

  @override
  State<signUp2> createState() => _signUp2State();
}

class _signUp2State extends State<signUp2> {
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
                                hintText: 'Number of child',
                                labelText: 'Childs'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'State',
                                labelText: 'State'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'District',
                                labelText: 'District'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Block',
                                labelText: 'Block'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Village',
                                labelText: 'Village'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Caste',
                                labelText: 'Caste'),
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
                                        builder: (builder) => signUp3()));
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
