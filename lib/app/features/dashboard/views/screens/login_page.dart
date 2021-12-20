import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../config/themes/app_theme.dart';
import '../../../../constans/app_constants.dart';
import 'dashboard_screen.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppTheme.basic.cardColor,
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * .45,
                height: MediaQuery.of(context).size.height * .47,
                child: Card(
                  shadowColor: Color.fromRGBO(218,165,32,1),
                  elevation: 7,
                  color: Colors.transparent,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: kSpacing * (kIsWeb ? 3.5 : 1.5)),
                      Text(
                        "Company Name",
                        style:
                            TextStyle(fontFamily: Font.poppins, fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: kSpacing * (kIsWeb ? 0.5 : 1.5)),
                      Container(
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * .1,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                                  
                                ))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * .1,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ))),
                      ),
                      Container(
                        height: 50.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: AppTheme.basic.primaryColor)),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DashboardScreen()),
                            );
                          },

                          padding: EdgeInsets.all(10.0),
                          color: AppTheme.basic.primaryColor,
                          textColor: Colors.white,
                          child:
                              Text("Login", style: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
