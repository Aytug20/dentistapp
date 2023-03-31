import 'package:flutter/material.dart';
import 'package:dentistapp/signup_screen/signup_screen.dart';
import 'package:dentistapp/constans.dart';
import 'package:dentistapp/first_screen/background.dart';
import '../../login_screen/login_screen.dart';
import '../../components/rounded_button.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Background(
      child:SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              SizedBox(height: size.height*0.05),
              Text(
                  "Dentist App",
                  style:TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Rawley",

                  )
              ),
              Text(
                  "Hastalarınızı inceleyin.",
                  style: TextStyle(
                    fontSize: 15,
                    color:Colors.white,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Bold",

                  )

              ),
              SizedBox(
                  height:20,
                  width:200,
                  child:Divider(
                    color:Colors.white,
                  )
              ),
              Positioned(
                child: Image.asset(
                  'assets/images/dentistc.png',),
                width: size.width * 0.35,),
              SizedBox(height: size.height*0.02),
              RoundedButton(
                text: "GİRİŞ YAP",
                color: kPriCo,
                textColor: kPrimaryLightsColor,
                press:(){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  },
                  ),
                  );
                },
              ),
              RoundedButton(
                text: "KAYIT OL",
                color: kPri,
                textColor: Colors.white,
                press:(){ Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();
                },
                ),
                );
                },
              ),
            ]
        ),
      ),
    );
  }

}