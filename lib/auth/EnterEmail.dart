import 'package:flutter/material.dart';
import 'package:medshare/auth/verificationcode.dart';
import 'package:medshare/generated/l10n.dart';

class Enteremail extends StatefulWidget {
  const Enteremail({super.key});

  @override
  State<Enteremail> createState() => _EnteremailState();
}

class _EnteremailState extends State<Enteremail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [

            Container(////  Enter email text \\\\\\
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width,
                child: Text(S.of(context).EnterEmail,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),


               Container(////  Enter your email text \\\\\\
                alignment: AlignmentDirectional.bottomStart,
                height: MediaQuery.of(context).size.height/7,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Text(S.of(context).EnterYouurEmail,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),


                               ///////////////////// email text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
              height: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 40),
             child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                hintText: S.of(context).email,
                labelText: S.of(context).email,
                labelStyle: TextStyle(fontWeight: FontWeight.w400),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
              ),
             ),
              ),


               Container( ///////////  continue button  \\\\\\\\\\\\\\
              height: MediaQuery.of(context).size.height/9,
              width: MediaQuery.of(context).size.width,
              //margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 12,right: 12,top: 5 , bottom: 23),
              child: MaterialButton(onPressed: (){
                //////////////////
                                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => VerificationCode(),
                        ),
                      );
              },
              child: Text(S.of(context).continue_botton,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
               color: Color.fromRGBO(56, 97, 231, 0.612),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),)
              ),
              ),
          
          ],),
    );
  }
}