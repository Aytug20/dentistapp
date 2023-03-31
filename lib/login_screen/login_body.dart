import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dentistapp/signup_screen/signup_screen.dart';
import 'package:dentistapp/components/rounded_button.dart';
import 'package:dentistapp/components/rounded_inputfield.dart';
import 'package:dentistapp/components/rounded_password_field.dart';
import '../login_screen/login_background.dart';
import '../alreadyhaveanaccountcheck.dart';
import '../constans.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [

            Text("GİRİŞ YAP",
              style:TextStyle(
                  color: kPr,
                  fontSize: 25,
                  fontWeight:FontWeight.bold),
            ),

            Text(
                "Zaman kaybetmeyin.",
                style: TextStyle(
                  fontSize: 15,
                  color:kPr,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Bold",

                )

            ),

            SizedBox(
                height:20,
                width:200,
                child:Divider(
                  color:kPr,
                )
            ),

            Positioned(
              child: Image.asset(
                "assets/images/dentistb.png",
                height:size.height*0.35,

              ),
            ),

            RoundedInputField(
              hintText: "Kullanıcı Adı",
              onChanged: (value){},
            ),

            RoundedPasswordField(
              onChanged: (value){},
            ),

            RoundedButton(
              text: "GİRİŞ",
              color: kPr,
              press:(){},

            ),

            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();
                },
                ),

                );

              },

            )

          ],
        ),
      ),
    );

  }
}
