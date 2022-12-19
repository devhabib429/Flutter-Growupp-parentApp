import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class loginOtp extends StatefulWidget {
  const loginOtp({super.key});

  @override
  State<loginOtp> createState() => _loginOtpState();
}

class _loginOtpState extends State<loginOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
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
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/titlelogo.png"),
                            fit: BoxFit.contain)),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/loginotp.png"),
                              fit: BoxFit.fill)),
                    ),
                  )
                ],
              ),
            ),
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(74, 42, 81, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width*1,
                      child: Center(child: Text("Enter Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color: Color.fromRGBO(74, 42, 81, 1)),)),
                    ),
                    SizedBox(height: 2),
                    Container(   
                      width: MediaQuery.of(context).size.width*1,
                      color: Colors.white,
                      child: Pinput(
                        length: 4,   
                        onCompleted: (value) {
                          
                        },                    
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width*1,
                      color: Colors.white,
                      child: Center(child: Text("Query? Contact")),
                    )
                  ],
                ),
              ),
            ]),
          ],
              ),
            ),
        ));
  }
}
