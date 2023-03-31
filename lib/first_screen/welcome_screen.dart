import 'package:flutter/material.dart';

import 'package:dentistapp/first_screen/body.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0,204,219,1),
      body: Body(),
    );

  }

}