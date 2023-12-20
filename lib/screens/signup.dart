import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:furniture/widget/constant.dart';
import 'package:furniture/screens/homescreen.dart';
import 'package:furniture/widget/button.dart';
import 'package:furniture/widget/textfield.dart';

class SignUp extends StatefulWidget {

  
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final formkey = GlobalKey<FormState>();
  //GlobalKey<FormState> forstate = new GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  //SignUp()async{}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                            left: 30.0, top: 10.0, right: 25.0, bottom: 00),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Skip',
                            style: TextStyle(
                                color: constant().iconColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                        Container(
                    padding: EdgeInsets.all(10),
                    child: CustomTextFieldOutline(
                      
                      label: 'Enter your email',
                      controller: nameController,
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFieldpassword(
                      label: '*********',
                      controller: passwordController,
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'phone',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: CustomTextFieldOutline(
                      label: 'Enter your phone',
                      controller: phoneController,
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: MaterialButton(
                    onPressed: () async {
                      //final isvalid = formkey.currentState!.validate();
                      //if (!isvalid) return;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return HomeScreen();
                      }));
                    },
                    child: const Button(
                      inputText: 'Sign Up',
                      height: 50,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Text(
                  'OR ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue[900],
                      size: 35.0,
                    ),
                    label: Text('Login With Facebook',
                        style: TextStyle(
                          color: Colors.blue[900],
                        )),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      'Does not have account?',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 25),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
                  ],
                ),
                
              ],
            )));
  }
}
