import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medshare/generated/l10n.dart';
import 'package:medshare/main.dart';


class Nointernet extends StatefulWidget {
  const Nointernet({super.key});

  @override
  State<Nointernet> createState() => _NointernetState();
}

class _NointernetState extends State<Nointernet> {
  // @override
  // void initState() async{
  //   // TODO: implement initState
  //   super.initState();
  //      WidgetsFlutterBinding.ensureInitialized();
  //                     SharedPreferences prefs =
  //                         await SharedPreferences.getInstance();
  //                     String? language_no_con = prefs.getString('language');
  //                     runApp(MyApp(language_no_con));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: MediaQuery.of(context).size.height/5),
            Center(child: Icon(Icons.wifi_off_rounded ,color: Color.fromRGBO(56, 97, 231, 0.612),
                          size: 200,),),
            Center(child: 
            Text(S.of(context).NoInternetConnection,style: TextStyle(fontSize: 30),)
            ,),
             Container(height: MediaQuery.of(context).size.height/40),
             Center(child: 
            Text(S.of(context).YourInternetConnection,style: TextStyle(fontSize: 15),)
            ,) ,
             Center(child: 
            Text(S.of(context).NotAvailable,style: TextStyle(fontSize: 15),)
            ,), 

             Container( ///////////  try again button  \\\\\\\\\\\\\\
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.2,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/15),
                padding: EdgeInsets.only(left: 12,right: 12,top: 5 , bottom: 23),
                child: MaterialButton(onPressed: (){
                  main();
                 
                },
                child: Text(S.of(context).Tryagain,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
                 color: Color.fromRGBO(56, 97, 231, 0.612),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),)
                ),
                ),                                        
          ],
        ),
      ),
    );
  }
}