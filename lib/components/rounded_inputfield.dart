import 'package:flutter/material.dart';
import 'package:dentistapp/components/text_field_container.dart';
import 'package:dentistapp/constans.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon=Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContanier(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon:Icon(icon,color:kPr
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 15.0,color: kPr),
          border: InputBorder.none,
        ),
      ),
    );
  }
}