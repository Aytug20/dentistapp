import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:dentistapp/alreadyhaveanaccountcheck.dart';
import 'package:dentistapp/components/rounded_button.dart';
import 'package:dentistapp/components/rounded_inputfield.dart';
import 'package:flutter_svg/svg.dart';
import '../login_screen/login_screen.dart';
import '../components/rounded_password_field.dart';
import '../constans.dart';
import '../or_divider.dart';
import 'signup_background.dart';

class Body extends StatelessWidget {
  TextEditingController user_name =TextEditingController();
  TextEditingController user_password =TextEditingController();

  kayitOl(){
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: user_name.text, password: user_password.text);
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "KAYIT OL",
              style: TextStyle(
                color: kPrimar,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
                "Hastalarınızı not edin",
                style: TextStyle(
                  fontSize: 15,
                  color:kPrimar,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Bold",
                )
            ),
            SizedBox(
                height:20,
                width:200,
                child:Divider(
                  color:kPrimar,
                )
            ),
            SizedBox(height: size.height*0.03,),
            Positioned(
              top: 180,
              child: Image.asset(
                "assets/images/dentistf.png",
                height: size.height*0.30,
              ),
            ),
            RoundedInputField(
              hintText: "Kullanıcı Adı",
              onChanged: (value){
                user_name;
              },
            ),
            RoundedPasswordField(
              onChanged: (value){
                user_password;
              },
            ),
            RoundedButton (text: "KAYIT OL",color: kPrimar,
              press:(){ kayitOl();
              },
              textColor: kPr,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                  },
                ),
              );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(icon: SvgPicture.asset("assets/icons/cleandentist.svg"),iconSize: 40,
                  onPressed:() {} ,
                ),
                SizedBox(width: kDefaultPadding),
                IconButton(icon: SvgPicture.asset("assets/icons/checkdentist.svg"),iconSize: 40,
                  onPressed:() {} ,
                ),
                SizedBox(width: kDefaultPadding),
                IconButton(icon: SvgPicture.asset("assets/icons/mapdentist.svg"),iconSize: 40,
                  onPressed:() {} ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}