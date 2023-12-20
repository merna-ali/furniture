import 'package:flutter/material.dart';

class CustomTextFieldOutline extends StatelessWidget {
  
  CustomTextFieldOutline({
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     /* validator: (val) {
        var val = label;
        if (val.length > 100) {
          return "username can’t to be lager than 100 letter ";
        }
        if (val.length < 2) {
          return "username can’t to be less than 100 letter ";
        }
         return null;
      },*/
      decoration: InputDecoration(
          hintText: label,
          labelStyle: TextStyle(color: Colors.black54),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          )),
      style: TextStyle(color: Colors.black),
      controller: controller,

      /*autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (email)=>
      email != null && EmailValidator.validate (email)?'enter your email':null ,*/
    );
  }
}

class TextFieldpassword extends StatelessWidget {
  TextFieldpassword({
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      /*validator: (val) {
        var val = label;
        if (val.length > 20) {
          return "password can’t to be lager than 100 letter ";
        }
        if (val.length < 2) {
          return "password can’t to be less than 100 letter ";
        }
        return null;
      },*/
      obscureText: true,
      decoration: InputDecoration(
          hintText: label,
          labelStyle: TextStyle(color: Colors.black54),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          )),
      style: TextStyle(color: Colors.black),
      controller: controller,
    );
  }
}
