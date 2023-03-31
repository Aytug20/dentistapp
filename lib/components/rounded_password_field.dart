import 'package:flutter/material.dart';
import 'package:dentistapp/constans.dart';
import 'text_field_container.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContanier(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Şifre" ,
          hintStyle: TextStyle(fontSize: 15.0,color: kPr),
          icon: Icon(
            Icons.lock,color: kPr,
          ),
          suffixIcon: Icon(Icons.visibility,
            color: kPr,
          ),
          border:InputBorder.none,
        ),
      ),
    );
  }
}