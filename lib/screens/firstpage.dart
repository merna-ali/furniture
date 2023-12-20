import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:furniture/widget/constant.dart';
import 'package:furniture/screens/signin.dart';
import 'package:furniture/screens/signup.dart';
import 'package:furniture/widget/button.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              child: Image(
                image:
                    AssetImage('images/50e5efb600db7a38ed30bd687a6e15d2.jpg'),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        left: 30.0, top: 40.0, right: 25.0, bottom: 00),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 30.0, top: 450.0, right: 40.0, bottom: 00),
              child: Text(
                'Our Favourite Looks For Your Style',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 30.0, top: 530.0, right: 40.0, bottom: 00),
              child: Text(
                'Fill Your Home Without Emptying The Wallet',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 40.0, top: 0.0, right: 40.0, bottom: 00),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return SignUp();
                          }));
                        },
                        child: const Button(
                          inputText: 'Sign Up',
                          height: 50,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 40.0, top: 20.0, right: 10.0, bottom: 80),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return SignIn();
                          }));
                        },
                        child: const Button(
                          inputText: 'Sign In',
                          height: 50,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
