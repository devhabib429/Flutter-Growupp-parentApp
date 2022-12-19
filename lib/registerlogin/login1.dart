import 'package:flutter/material.dart';
import 'package:statepicker/registerlogin/loginotp.dart';
import 'package:statepicker/registerlogin/signup1.dart';

class login1 extends StatelessWidget {
  const login1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/login1.png"),
                      fit: BoxFit.none,
                    ),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 36,
                  left: 10,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(74, 42, 81, 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color: Color.fromRGBO(74, 42, 81, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: RichText(
                              text: const TextSpan(
                                  text: "Give Your Child A\n Better",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Color.fromRGBO(74, 42, 81, 1)),
                                  children: const <TextSpan>[
                                TextSpan(
                                  text: " Future",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 246, 187, 10)),
                                )
                              ])),
                        ),
//Text FIELD
                        Container(
                          padding: EdgeInsets.all(25),
                          width: 350,
                          child: Column(children: [
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Username",
                                  labelStyle:
                                      TextStyle(color: const Color(0xFF424242)),
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black))),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  labelStyle: new TextStyle(
                                      color: const Color(0xFF424242)),
                                  border: new UnderlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.red))),
                            ),
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginOtp()));
                            },
                            child: Text('Login In'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(74, 42, 81, 1)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.only(
                                      top: 17,
                                      bottom: 17,
                                      right: 120,
                                      left: 120)),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Create Account',
                              style: TextStyle(color: Colors.amber),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signUp1()));
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
