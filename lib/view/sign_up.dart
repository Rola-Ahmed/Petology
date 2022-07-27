import 'package:flutter/material.dart';

import '../responsive.dart';
import '../top_bar_contents.dart';
import  "package:petology/font/costum_google_icon.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    String dropdownValue = 'One';
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar()
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(),
            ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30), // POINT
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),

            ///////////////////////////////
            
         //   Column(
           //   children: [
                //Container(
                 // padding:EdgeInsets.all(15),
                //  child:
                   Row(
                    children: [
                      Container(
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            width: 1,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30), // POINT
                          ),
                        ),

                        child: Row(
                          children: [

                            IconButton(
                              onPressed: () {
                                //action coe when button is pressed
                              },
                              icon: Icon(Icons.facebook, color: Colors.white),
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(  width: screenSize.width / 4,),
                          ],
                        ), 
                      ),
                      ////////////////////////////////////////////////////////////////////////
                      //SizedBox(  width: screenSize.width / 4,),

                      Container(
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            width: 1,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30), // POINT
                          ),
                        ),

                        child: Row(
                          children: [

                           IconButton(
                              onPressed: () {
                                //action coe when button is pressed
                              },
                              icon: new Icon(MdiIcons.google,color: Colors.white,),
                              iconSize: 50,hoverColor: Colors.white,
                            //  splashColor: Colors.pink,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),

                             

                            
                          ],
                        ), 
                      ),

                    ],
                  ),
               // ),
          //    ],
          ///  ),

      //       ListTile(
      // //  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      //   leading: Container(
      //     child: Icon(Icons.autorenew, color: Colors.white),
      //   ),
      //   title: Text(
      //     "Introduction to Driving",
      //   ),
      //   subtitle: Row(
      //     children: <Widget>[
      //       Icon(Icons.linear_scale, color: Colors.yellowAccent),
      //       Text(" Intermediate", style: TextStyle(color: Colors.white))
      //     ],
      //   ),
    
      //  ),
          ],
        ),
      ),
    );
  }
}
