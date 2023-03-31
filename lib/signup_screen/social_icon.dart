import 'package:flutter/material.dart';
import '../constans.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final void Function()? press;
  const SocalIcon({
    Key? key,
    required this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child:Container(
        padding: EdgeInsets.all(20),
        decoration:BoxDecoration(
          border: Border.all(
            width:2,
            color: kPriColor,
          ),
          shape: BoxShape.circle,
        ),
        child:Positioned(
          child: Image.asset(
            iconSrc,
            height: 20,
            width: 20,
          ),
        ),
      ),
    );
  }
}



