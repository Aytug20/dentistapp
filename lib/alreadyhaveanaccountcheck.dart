import 'package:flutter/material.dart';
import 'constans.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function()? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login=true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Text(
          login ? "Hesabınız yok mu?":"Zaten bir hesabınız var mı?",
          style:TextStyle(color:kPr ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
              login ?"Kayıt ol" : "Giriş yap",
              style:TextStyle(
                color: kPr,
                fontWeight: FontWeight.bold,
              )
          ),
        )
      ],
    );
  }
}