// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class userHomePageContr extends StatelessWidget{

 const userHomePageContr({required this.controller,required this.tabs});
 final List<Widget> tabs;
 final TabController controller;

 
 @override
 Widget build(BuildContext context) {
  double screenwidth=MediaQuery.of(context).size.width;
  double tabBarScaling =screenwidth>1400
  ?0.21
  :screenwidth>1100
  ?0.3
  :0.4;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenwidth*tabBarScaling,
        child:Theme(
          data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.red,
          ), child:TabBar(controller: controller, tabs:tabs,) , 
        ),
      ),
    );
 }
 }