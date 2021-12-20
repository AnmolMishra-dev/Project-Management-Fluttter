import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../config/themes/app_theme.dart';
import '../../../../constans/app_constants.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.basic.canvasColor,
      body:SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

Container(
    width: MediaQuery.of(context).size.width*.45,
    height: MediaQuery.of(context).size.height*.5,

    child: Card(
      elevation: 7,
      color: Colors.transparent,

child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,

  children: [
    const SizedBox(height: kSpacing * (kIsWeb ? 0.8 : 1.5)),
    Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),)


  ],

),
    ))


          ],

        ),
      ),


    );
  }
}


