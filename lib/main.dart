import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login_layout/Animation/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: -40,
                      height: 235,
                      width: width,
                      child: FadeAnimation(
                        1,
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/background.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                    height: 220,
                    width: width + 20,
                    child: FadeAnimation(
                        1.3,
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/background-2.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  FadeAnimation(
                    1.5,
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromRGBO(49, 39, 79, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                    1.7,
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(196, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey[200]),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'username',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'password',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FadeAnimation(
                    1.7,
                    Text(
                      "esqueceu a senha?",
                      style: TextStyle(
                        color: Color.fromRGBO(196, 135, 198, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  FadeAnimation(
                    1.9,
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(49, 39, 79, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FadeAnimation(
                    2,
                    Text(
                      "criar conta",
                      style: TextStyle(
                        color: Color.fromRGBO(49, 39, 79, .6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
