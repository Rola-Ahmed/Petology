import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petology/responsive.dart';
import 'package:petology/top_bar_contents.dart';
import 'package:petology/view/sign_up.dart';

//import 'package:petology/menu_drawer.dart';

//import 'menu_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
    appBar: ResponsiveWidget.isSmallScreen(context)?
AppBar(): PreferredSize(preferredSize: Size(screenSize.width,70),child:TopBarContents(),),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: 
                  //TopBarContents(),
                  
                  // SizedBox(
                  //   height: 50, // screenSize.height *.9,
                  //   width: 50, //screenSize.width,
                  //   child:
                  //    Image.asset(
                  //     'Logo/logo.jpg',
                  //     //fit: BoxFit.cover,
                    
                  //   ),
                   
                  // ),
                  //Text('hello'),
                 
                  SignUp(),
                  
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}