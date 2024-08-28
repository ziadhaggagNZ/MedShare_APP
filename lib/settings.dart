import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medshare/auth/signin.dart';
import 'package:medshare/generated/l10n.dart';
import 'package:medshare/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: MediaQuery.of(context).size.height/30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 20),
              child: Text(
                S.of(context).MyProfile,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 40),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 25),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/male_avatar_icon.png"),
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width / 25),

                  Text(
                    "ziad",
                    style: TextStyle(fontSize: 20),
                  ),

                  Spacer(),

                  MaterialButton(
                    onPressed: () {
                      // Handle edit button tap
                    },
                    child: Text(
                      S.of(context).edit,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    color: Color.fromRGBO(56, 97, 231, 0.612),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 40),

            Container(
              
              padding: EdgeInsets.all(20),
              
 margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).Setting,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height / 40),

                  InkWell(
                                       onTap: () async {
                      WidgetsFlutterBinding.ensureInitialized();
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      String? languageCode = prefs.getString('language');
                      //languageCode = languageCodesize;
                      if (languageCode == 'en') {
                        languageset = "ar";
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('language', languageset!);
                        Future.delayed(Duration(seconds: 1));
                        runApp(MyApp(languageset));
                      } else if (languageCode == 'ar') {
                        languageset = "en";
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('language', languageset!);
                        Future.delayed(Duration(seconds: 1));
                        runApp(MyApp(languageset));
                      }
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: Color.fromRGBO(56, 97, 231, 0.612),
                          size: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          S.of(context).languages,
                          style: TextStyle(color: const Color.fromARGB(255, 134, 133, 133)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height / 40),

                  InkWell(
                    onTap: () {
                      // Handle location settings
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color.fromRGBO(56, 97, 231, 0.612),
                          size: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          S.of(context).locations,
                          style: TextStyle(color: const Color.fromARGB(255, 134, 133, 133)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 40),

            // Notification Box
            Container(
              //MediaQuery.of(context).size.width/1.03
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).notifications,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height / 40),

                  InkWell(
                    onTap: () {
                      // Handle notification settings
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_none,
                          color: Color.fromRGBO(56, 97, 231, 0.612),
                          size: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          S.of(context).pop_up_Notification,
                          style: TextStyle(color: const Color.fromARGB(255, 134, 133, 133)),
                        ),
                        Spacer(),
                        FlutterSwitch(
                          height: 20.0,
                          width: 40.0,
                          toggleSize: 15.0,
                          borderRadius: 10.0,
                          activeColor: Color.fromRGBO(56, 97, 231, 0.612),
                          value: switchButton,
                          onToggle: (value) {
                            setState(() {
                              switchButton = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 40),

            // Other Box
            Container(
              padding: EdgeInsets.all(20),
 margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).Others,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height / 40),

                  InkWell(
                    onTap: () {
                      // Handle About Us
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Color.fromRGBO(56, 97, 231, 0.612),
                          size: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          S.of(context).AboutUs,
                          style: TextStyle(color: const Color.fromARGB(255, 134, 133, 133)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height / 40),

                  InkWell(
                    onTap: () {
                      // Handle Terms and Conditions
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.contact_page,
                          color: Color.fromRGBO(56, 97, 231, 0.612),
                          size: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          S.of(context).TermsAndConditions,
                          style: TextStyle(color: const Color.fromARGB(255, 134, 133, 133)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height / 40),

                  InkWell(
                    onTap: () {
                      // Handle Log Out
                      logout();
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.red,
                          size: 25,
                        ),
                        SizedBox(width: 12),
                        Text(
                          S.of(context).LogOut,
                          style: TextStyle(color: const Color.fromARGB(255, 134, 133, 133)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }




logout()
{
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return SizedBox(
        height: 200,
        child: Center(
          
          
          child: Column(
            children: [
              Container(
              height: 60,
              alignment: AlignmentDirectional.topCenter,
              width: MediaQuery.of(context).size.width,

             // color: Colors.amber,
             child: Text(S.of(context).LogOut,style: TextStyle(fontSize: 30,color: Color.fromRGBO(56, 97, 231, 0.612),fontWeight: FontWeight.bold),)
              ),
            Container(
              height: 60,
              alignment: AlignmentDirectional.topCenter,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              //color: Colors.amber,
              child: Text(S.of(context).AreYouSure,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),), 
              ),
              //Divider(),
            Container(
              height: 50,
              alignment: AlignmentDirectional.topStart,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              //color: Colors.amber,
           child: Row(
            children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        S.of(context).cancel,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      color: Color.fromRGBO(56, 97, 231, 0.612),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
               SizedBox(width: MediaQuery.of(context).size.width / 20),

                      Container(
                           height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 2.5,
                        child: MaterialButton(
                                            onPressed: () {
                        //////////////
                                 Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => signin(),
                        ),
                      );
                                            },
                                            child: Text(
                        S.of(context).YesLogout,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                                            ),
                                            color: Colors.red,
                                            shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                                            ),
                                          ),
                      ),
            ],
           ),
              ),
          ],)
        ),
        
      );
    },);
}



}



























// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:medshare/generated/l10n.dart';
// import 'package:medshare/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_switch/flutter_switch.dart';

// class Settings extends StatefulWidget {
//   const Settings({Key? key}) : super(key: key);

//   @override
//   State<Settings> createState() => _SettingsState();
// }

// class _SettingsState extends State<Settings> {

//   bool switch_button = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               ///////////////////   MyProfile text \\\\\\\\\\\\\\\\\\\\\
//               height: MediaQuery.of(context).size.height / 9,
//               width: MediaQuery.of(context).size.width,
//               alignment: AlignmentDirectional.bottomStart,
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Text(
//                 S.of(context).MyProfile,
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Container(
//               ///////////////////   avatar and name and   edit button \\\\\\\\\\\\\\\\\\\\\
//               height: MediaQuery.of(context).size.height / 9,
//               width: MediaQuery.of(context).size.width,
//               child: Row(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     alignment: AlignmentDirectional.bottomStart,
//                     child: CircleAvatar(
//                       radius: 30,
//                       backgroundImage:
//                           AssetImage("images/male_avatar_icon.png"),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 20),
//                     alignment: Alignment.center,
//                     child: Text(
//                       "ziad",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width / 1.5,
//                     alignment: AlignmentDirectional.bottomEnd,
//                     padding: EdgeInsets.only(bottom: 8),
//                     child: MaterialButton(
//                       onPressed: () {
//                         setState(() {
//                           // Handle edit button tap
//                         });
//                       },
//                       child: Text(
//                         S.of(context).edit,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                       color: Color.fromRGBO(56, 97, 231, 0.612),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(height: 20),
//             Container(
//               ///////////////////   settings box \\\\\\\\\\\\\\\\\\\\\
//               padding: EdgeInsets.all(20),
//               height: MediaQuery.of(context).size.height / 4.72,
//               width: MediaQuery.of(context).size.width / 1.1,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.25),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     alignment: AlignmentDirectional.topStart,
//                     child: Text(
//                       S.of(context).Setting,
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(height: 15),
//                   InkWell(
//                     onTap: () async {
//                       WidgetsFlutterBinding.ensureInitialized();
//                       SharedPreferences prefs =
//                           await SharedPreferences.getInstance();
//                       String? languageCode = prefs.getString('language');
//                       //languageCode = languageCodesize;
//                       if (languageCode == 'en') {
//                         languageset = "ar";
//                         SharedPreferences prefs =
//                             await SharedPreferences.getInstance();
//                         prefs.setString('language', languageset!);
//                         Future.delayed(Duration(seconds: 1));
//                         runApp(MyApp(languageset));
//                       } else if (languageCode == 'ar') {
//                         languageset = "en";
//                         SharedPreferences prefs =
//                             await SharedPreferences.getInstance();
//                         prefs.setString('language', languageset!);
//                         Future.delayed(Duration(seconds: 1));
//                         runApp(MyApp(languageset));
//                       }
//                     },
//                     child: Container(
//                       height: MediaQuery.of(context).size.height / 25,
//                       width: MediaQuery.of(context).size.width,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.language,
//                             color: Color.fromRGBO(56, 97, 231, 0.612),
//                             size: 25,
//                           ),
//                           SizedBox(width: 12),
//                           Text(
//                             S.of(context).languages,
//                             style: TextStyle(
//                               color: const Color.fromARGB(255, 134, 133, 133),
//                             ),
//                           ),
//                           //Container(width: MediaQuery.of(context).size.width -210,),
//                           Container(
//                               padding: EdgeInsetsDirectional.only(
//                                   start: languageset == "en"
//                                       ? MediaQuery.of(context).size.width / 2.1
//                                       : MediaQuery.of(context).size.width /1.71
//                                       ),
//                               child: Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 size: 18,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(height: 15),
//                   InkWell(
//                     onTap: () {
//                       // Handle location settings
//                     },
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.location_on_outlined,
//                           color: Color.fromRGBO(56, 97, 231, 0.612),
//                           size: 25,
//                         ),
//                         SizedBox(width: 12),
//                         Text(
//                           S.of(context).locations,
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 134, 133, 133),
//                           ),
//                         ),
//                         Container(
//                           // color: Colors.amber,
//                           width: MediaQuery.of(context).size.width - 205,
//                         ),
//                         Container(
//                             padding: EdgeInsetsDirectional.only(
//                                 start: languageset == "en"
//                                     ? MediaQuery.of(context).size.width / 80
//                                     : MediaQuery.of(context).size.width / 11),
//                             child: Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: 18,
//                             )),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//            Container(
//              height:  MediaQuery.of(context).size.height / 40,
//             ),
//             Container(
//               ////////////////   notification box   \\\\\\\\\\\\\\\\\\\\\\\\\
//               padding: EdgeInsets.all(20),
//               height: MediaQuery.of(context).size.height / 6.9,
//               width: MediaQuery.of(context).size.width / 1.1,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.25),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
//               ),

//               child: Column(
//                 children: [
//                   Container(
//                     alignment: AlignmentDirectional.topStart,
//                     child: Text(
//                       S.of(context).notifications,
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(height: 15),
//                   InkWell(
//                     onTap: () {
//                       /////////////////////
//                     },
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.notifications_none,
//                           color: Color.fromRGBO(56, 97, 231, 0.612),
//                           size: 25,
//                         ),
//                         SizedBox(width: 12),
//                         Text(
//                           S.of(context).pop_up_Notification,
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 134, 133, 133),
//                           ),
//                         ),
//                         //Container(width: MediaQuery.of(context).size.width / 3.4,),
//                         Container(
//                           //width: MediaQuery.of(context).size.width / 1.9,
//                           padding: EdgeInsetsDirectional.only(
//                               start: languageset == "en"
//                                   ? MediaQuery.of(context).size.width / 3.5
//                                   : MediaQuery.of(context).size.width / 2.5),
//                           child: FlutterSwitch(
//                             height: 20.0,
//                             width: 40.0,
//                             //padding: 4.0,
//                             toggleSize: 15.0,
//                             borderRadius: 10.0,
//                             activeColor: Color.fromRGBO(56, 97, 231, 0.612),
//                             value: switch_button,
//                             onToggle: (value) {
//                               setState(() {
//                                 switch_button = value;
//                               });
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

// Container(
//              height:  MediaQuery.of(context).size.height / 40,
//             ),
//                       Container(
//               ////////////////   other box   \\\\\\\\\\\\\\\\\\\\\\\\\
//               padding: EdgeInsets.all(20),
//               height: MediaQuery.of(context).size.height / 4.5,
//               width: MediaQuery.of(context).size.width / 1.1,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.25),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
//               ),

//               child: Column(
//                 children: [
//                   Container(
//                     alignment: AlignmentDirectional.topStart,
//                     child: Text(
//                       S.of(context).Others,
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(height: 5),
//                   InkWell(
//                     onTap: () {
//                       /////////////////////
//                     },
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.info_outline,
//                           color: Color.fromRGBO(56, 97, 231, 0.612),
//                           size: 25,
//                         ),
//                         SizedBox(width: 12),
//                         Text(
//                           S.of(context).AboutUs,
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 134, 133, 133),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsetsDirectional.only(
//                               start: languageset == "en"
//                                   ? MediaQuery.of(context).size.width / 2
//                                   : MediaQuery.of(context).size.width / 1.78),
//                           child: Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: 18,
//                             )
//                         ),
//                       ],
//                     ),
//                   ),
// Container(height: MediaQuery.of(context).size.height / 85,),
//                                     InkWell(
//                     onTap: () {
//                       /////////////////////
//                     },
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.contact_page,
//                           color: Color.fromRGBO(56, 97, 231, 0.612),
//                           size: 25,
//                         ),
//                         SizedBox(width: 12),
//                         Text(
//                           S.of(context).TermsAndConditions,
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 134, 133, 133),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsetsDirectional.only(
//                               start: languageset == "en"
//                                   ? MediaQuery.of(context).size.width / 3.33
//                                   : MediaQuery.of(context).size.width / 2.31),
//                           child: Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: 18,
//                             )
//                         ),
//                       ],
//                     ),
//                   ),
// Container(height: MediaQuery.of(context).size.height / 85,),
//                   InkWell(
//                     onTap: () {
//                       /////////////////////
//                     },
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.logout_outlined,
//                           color: Colors.red,
//                           size: 25,
//                         ),
//                         SizedBox(width: 12),
//                         Text(
//                           S.of(context).LogOut,
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 134, 133, 133),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsetsDirectional.only(
//                               start: languageset == "en"
//                                   ? MediaQuery.of(context).size.width / 1.88
//                                   : MediaQuery.of(context).size.width / 2.15),
//                           child: Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: 18,
//                             )
//                         ),
//                       ],
//                     ),
//                   ),
                  
//                 ],
//               ),
//             ),



//           ],
//         ),
//       ),
//     );
//   }
// }
