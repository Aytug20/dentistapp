import 'package:flutter/material.dart';
import '../constans.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color color,textColor;
  const RoundedButton({
    Key? key, required this.text, this.press, this.color=kPr, this.textColor=Colors.white,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width:size.width * 0.8 ,
      child:ClipRRect(
        borderRadius: BorderRadius.circular(29),
        // ignore: deprecated_member_use
        child:FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style:TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}