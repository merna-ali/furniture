import 'package:flutter/material.dart';
import 'package:furniture/widget/constant.dart';

class Button extends StatefulWidget {
  const Button({
    Key? key,
    required this.inputText,
    required this.height,
    required this.color,
  }) : super(key: key);
  final String inputText;
  final double height;
  final Color color;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: widget.color,
      ),
      child: Center(
        child: Text(
          widget.inputText,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}

class ButtonIcon extends StatefulWidget {
  const ButtonIcon({
    Key? key,


    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  _ButtonIconState createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  margin: EdgeInsets.only(
        //  left: 20,),
        child: Icon(
          widget.icon,
          color:constant().iconColor,
          size: 25,
        ));
  }
}
