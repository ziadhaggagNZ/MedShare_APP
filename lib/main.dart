import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:medshare/auth/CreateAccount.dart';
import 'package:medshare/auth/CreateNewPassord.dart';
import 'package:medshare/auth/EnterEmail.dart';
import 'package:medshare/auth/FillProfile.dart';
import 'package:medshare/auth/first_looding.dart';
import 'package:medshare/auth/signin.dart';
import 'package:medshare/auth/verificationcode.dart';
import 'package:medshare/blocs/medshare_bloc.dart';
import 'package:medshare/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medshare/nointernet.dart';
import 'package:medshare/prehomepage.dart';
import 'package:medshare/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? languageset;
bool? connection;

Future<String?> getValueFromCache(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

Future<bool> checkInternetConnection() async {
  try {
     await http.head(Uri.parse("https://www.google.com"));
    return true;
  } catch (e) {
    return false;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? languageCode = await getValueFromCache('language');
  languageset = languageCode;
  
  if (languageCode == null) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', "en");
    languageCode = "en";
    languageset = "en";
  }
  
  connection = await checkInternetConnection();

  runApp(MyApp(languageCode));
}

class MyApp extends StatefulWidget {
  final String? languageCode;
  MyApp(this.languageCode, {Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    checkAndSetConnection();
  }

  void checkAndSetConnection() async {
    bool isConnected = await checkInternetConnection();
    setState(() {
      connection = isConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => medshareBloc(),
      child: MaterialApp(
        locale: widget.languageCode != null ? Locale(widget.languageCode!) : Locale("en"),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'MEDSHARE',
        routes: {
          "signup": (context) => signin(),
          "looding": (context) => first_looding(),
          "fillprofile": (context) => FillProfile(),
          "createacount": (context) => CreateAcount(),
          "enteremail": (context) => Enteremail(),
          "createnewpassord": (context) => Createnewpassord(),
          "verificationcode": (context) => VerificationCode(),
          "homepage": (context) => Prehomepage(),
          "Settings": (context) => Settings(),
        },
        home: Builder(
          builder: (context) => connection == false ? Nointernet() : Scaffold(
          body: first_looding(), 
          ),
        ),
      ),
    );
  }
}









//  body: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(50),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("signup");
//                     },
//                     child: Text("signin"),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("looding");
//                     },
//                     child: Text("looding"),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("fillprofile");
//                     },
//                     child: Text("fillprofile"),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("createacount");
//                     },
//                     child: Text("create acount"),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => Enteremail(),
//                         ),
//                       );
//                     },
//                     child: Text("enter email"),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => Createnewpassord(),
//                         ),
//                       );
//                     },
//                     child: Text("create new pass"),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => VerificationCode(),
//                         ),
//                       );
//                     },
//                     child: Text("VerificationCode"),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => Prehomepage(),
//                         ),
//                       );
//                     },
//                     child: Text("Prehomepage"),
//                   ),
//                 ),
//                     Container(
//                   margin: EdgeInsets.all(10),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => Nointernet(),
//                         ),
//                       );
//                     },
//                     child: Text("no internet"),
//                   ),
//                 ),
            
//               ],
//             ),