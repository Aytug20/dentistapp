import 'package:flutter/material.dart';
import 'constans.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.02),
      width: size.width*0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Text(
              "YA DA",
              style: TextStyle(
                color: kPr,
                fontWeight:FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],

      ),
    );
  }
}

class buildDivider extends StatelessWidget {
  const buildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Divider(
        color: kPr,
        height: 1.5,
      ),
    );
  }
}