import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(247, 249, 177, 83),
               
                  Color.fromARGB(247, 157, 106, 34),
                   Color.fromARGB(247, 125, 86, 36),
                Color.fromARGB(247, 85, 57, 19),
                 Color.fromARGB(247, 53, 35, 11),
                //add more colors for gradient
              ],
            ),
          ),
  //   color: Colors.white,//Colors.red.withOpacity(0.5),
      child: Padding(
        padding:EdgeInsets.all(0), //EdgeInsets.all(20),
        child: Expanded(
          child: Row(
           // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(
              //   width: screenSize.width / 4,
              // ),
              Row(

                children: [
                  Image.asset(
                    'Logo/logo.png',
                    height: 400,
                    width: 400,
                  ),
                ],
              ),

              //////////////////////////////////////////////////

            SizedBox(width: screenSize.width / 10),
          //1
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ///////////////////////////////
                    Text(
                      'About Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Color.fromARGB(255, 191, 137, 101), //line under the word
                      ),
                    )
                  ],
                ),
              ),

 SizedBox(width: screenSize.width / 20),
              //2
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ///////////////////////////////
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Color.fromARGB(255, 191, 137, 101), //line under the word
                      ),
                    )
                  ],
                ),
              ),

               SizedBox(width: screenSize.width / 20),
              //3
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ///////////////////////////////
                    Text(
                      'Service',
                      style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color:Color.fromARGB(255, 191, 137, 101), //line under the word
                      ),
                    )
                  ],
                ),
              ),

        SizedBox(width: screenSize.width / 20),
              //4
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ///////////////////////////////
                    Text(
                      'Request',
                      style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Color.fromARGB(255, 191, 137, 101), //line under the word
                      ),
                    )
                  ],
                ),
              ),


              SizedBox(width: screenSize.width / 10),
              //5
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[4] = true : _isHovering[4] = false;
                  });
                },
                onTap: () {},
                child: 
                AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
         // padding: EdgeInsets.all(_isHovering[4] ? 45 : 30),
       decoration: BoxDecoration(
            color: _isHovering[4]? Color.fromARGB(255, 175, 174, 174): Color.fromARGB(247, 85, 57, 19),
            borderRadius: BorderRadius.circular(28),
          ), child: 
          
 Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ///////////////////////////////
                    Container(
                     //  margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
       border: Border.all( 
         width: 1,
         color: Colors.white, 
      ),
       borderRadius: BorderRadius.all(
        Radius.circular(30) // POINT
    ),
    ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5),
                  
                  ],
                ),
         
                ),
               
              ),

              SizedBox(width: screenSize.width / 30),
              //6
             InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[5] = true : _isHovering[5] = false;
                  });
                },
                onTap: () {},
                child: 
                AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
         // padding: EdgeInsets.all(_isHovering[4] ? 45 : 30),
       decoration: BoxDecoration(
            color: _isHovering[5]? Color.fromARGB(255, 175, 174, 174): Color.fromARGB(247, 85, 57, 19),
            borderRadius: BorderRadius.circular(28),
          ), child: 
          
 Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ///////////////////////////////
                    Container(
                     //  margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
       border: Border.all( 
         width: 1,
         color: Colors.white, 
      ),
       borderRadius: BorderRadius.all(
        Radius.circular(30) // POINT
    ),
    ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5),
                  
                  ],
                ),
         
                ),
               
              ),

            ],
          ),
        ),
      ),
    );
    //);
  }
}
