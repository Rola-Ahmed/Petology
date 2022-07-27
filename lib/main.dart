import 'package:flutter/material.dart';
import 'package:petology/view/home_page.dart';
import 'package:petology/view/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUp()
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

// void main() => runApp(const MyApp());

// ///
// class MyApp extends StatefulWidget {
//   ///
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int selectedIndex = 0;

//   void changeTab() {
//     if (mounted) setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // extendBody: true,
//         bottomNavigationBar: ResponsiveNavigationBar(
//           selectedIndex: selectedIndex,
//           onTabChange: (int index) {
//             selectedIndex = index;
//             changeTab();
//           },

//           // showActiveButtonText: false,
//           textStyle: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),

//           navigationBarButtons: const <NavigationBarButton>[
//             //1
//             NavigationBarButton(
//               text: 'About us',
//               //icon: Icons.people,
//               // backgroundGradient: LinearGradient(
//               //   colors: <Color>[
//               //     Colors.yellow,
//               //     Colors.green,
//               //     Colors.blue,
//               //   ],
//               // ),
//             ),
//            //2
//             NavigationBarButton(
//               text: 'Categories',
//               // icon: Icons.star,
//               // backgroundGradient: LinearGradient(
//               //   colors: <Color>[Colors.cyan, Colors.teal],
//               // ),
//             ),

//             NavigationBarButton(
//               text: 'Services',
//               // icon: Icons.settings,
//               // backgroundGradient: LinearGradient(
//               //   colors: <Color>[Colors.green, Colors.yellow],
//               // ),
//             ),

//             NavigationBarButton(
//               text: 'Request',
//               // icon: Icons.settings,
//               // backgroundGradient: LinearGradient(
//               //   colors: <Color>[Colors.green, Colors.yellow],
//               // ),
//             ),


//             NavigationBarButton(
//               text: 'Sign Up',
//               // icon: Icons.settings,
//               // backgroundGradient: LinearGradient(
//               //   colors: <Color>[Colors.green, Colors.yellow],
//               // ),
//             ),

//             NavigationBarButton(
//               text: 'Sign in',
//               //icon: Icons.settings,
//               /*backgroundGradient: LinearGradient(
//                 colors: <Color>[Colors.green, Colors.yellow],
//               ),*/
//             ),



//           ],
//         ),
//       ),
//     );
//   }
// }