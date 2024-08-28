
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:medshare/generated/l10n.dart';
import 'package:medshare/homepage.dart';
import 'package:medshare/settings.dart';

class Prehomepage extends StatefulWidget {
  const Prehomepage({Key? key}) : super(key: key);

  @override
  State<Prehomepage> createState() => _PrehomepageState();
}

class _PrehomepageState extends State<Prehomepage> {
  int _selectedIndex = 0;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    KeyboardVisibilityController().onChange.listen((bool visible) {
      setState(() {
        _isKeyboardVisible = visible;
      });
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onFloatingActionButtonPressed() {
    // Perform action when the button is pressed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: !_isKeyboardVisible
          ? CircleAvatar(
                        radius: 30,
                        child: FloatingActionButton(
              shape: CircleBorder(eccentricity: 0.5),
        onPressed: () {
            // Perform action when the button is pressed
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(56, 97, 231, 0.612), // Background color of the button
      ),)
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: S.of(context).Home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: S.of(context).Setting,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(56, 97, 231, 0.612),
        onTap: _onItemTapped,
      ),
      body: _selectedIndex == 0 ? Homepage() : Settings(),
    );
  }
}












// import 'package:flutter/material.dart';
// import 'package:medshare/generated/l10n.dart';
// import 'package:medshare/homepage.dart';
// import 'package:medshare/settings.dart';

// class Prehomepage extends StatefulWidget {
//   const Prehomepage({super.key});

//   @override
//   State<Prehomepage> createState() => _PrehomepageState();
// }

// class _PrehomepageState extends State<Prehomepage> {



//  int _selectedIndex = 0;

//   // static const List<Widget> _widgetOptions = <Widget>[
//   //   Text('Home', style: TextStyle(fontSize: 30)),
//   //   Text('Settings', style: TextStyle(fontSize: 30)),
//   // ];



//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }




// // CircleAvatar(
// //                         radius: 30,
// //                         child: FloatingActionButton(
// //               shape: CircleBorder(eccentricity: 0.5),
// //         onPressed: () {
// //             // Perform action when the button is pressed
// //         },
// //         child: Icon(Icons.add),
// //         backgroundColor: Color.fromRGBO(56, 97, 231, 0.612), // Background color of the button
// //       ),),
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(    
//       //backgroundColor: Color.fromARGB(255, 237, 235, 235), 
//         backgroundColor: Colors.white, 
      //       floatingActionButton: CircleAvatar(
      //                   radius: 30,
      //                   child: FloatingActionButton(
      //         shape: CircleBorder(eccentricity: 0.5),
      //   onPressed: () {
      //       // Perform action when the button is pressed
      //   },
      //   child: Icon(Icons.add),
      //   backgroundColor: Color.fromRGBO(56, 97, 231, 0.612), // Background color of the button
      // ),),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

//       bottomNavigationBar: BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: S.of(context).Home,
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: S.of(context).Setting,
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Color.fromRGBO(56, 97, 231, 0.612),
//           onTap: _onItemTapped,
//         ),



//       // bottomNavigationBar: BottomAppBar(
//       //   shape: CircularNotchedRectangle(),
//       //   color: Color.fromARGB(255, 244, 242, 242), // Background color of the bottom app bar
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //     children: <Widget>[
            
            
//       //         InkWell(
//       //         onTap: () {
//       //           //////////////
//       //         },
//               // child: Column(
//               //   children: [
//               //     Icon(Icons.home_filled,color: Colors.black,size: 35,),
//               //     Text("Home")
//               //   ],
//               // ),
//       //       ),

//       //       InkWell(
//       //         onTap: () {
//       //           //////////////
//       //         },
//       //         child: Column(
//       //           children: [
//       //             Icon(Icons.settings,color: Colors.black,size: 35,),
//       //             Text("Settings")
//       //           ],
//       //         ),
//       //       ),
          
//       //     ],
//       //   ),
//       // ),

//       body: _selectedIndex == 0 ? Homepage() : Settings()
//       );
//   }
// }



