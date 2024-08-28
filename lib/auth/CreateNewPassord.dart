import 'package:flutter/material.dart';
import 'package:medshare/generated/l10n.dart';
import 'package:medshare/prehomepage.dart';

class Createnewpassord extends StatefulWidget {
  const Createnewpassord({super.key});

  @override
  State<Createnewpassord> createState() => _CreatenewpassordState();
}

bool obscure_pass = true;
bool obscure_Confirm_pass = true;


class _CreatenewpassordState extends State<Createnewpassord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [

            Container(////  Create new passord text \\\\\\
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width,
                child: Text(S.of(context).CreateNewPassword,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),


               Container(////  Create Your New Passord  text \\\\\\
                alignment: AlignmentDirectional.bottomStart,
                height: MediaQuery.of(context).size.height/7,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Text(S.of(context).CreateYourNewPassword,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),


          ///////////////////// password text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
              height: MediaQuery.of(context).size.height/8,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 30),
              child: TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: obscure_pass,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){setState(() {
                  obscure_pass = !obscure_pass;
                });}, icon: Icon(obscure_pass ? Icons.visibility_outlined : Icons.visibility_off_outlined)),
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                hintText: S.of(context).password,
                labelText: S.of(context).password,
                labelStyle: TextStyle(fontWeight: FontWeight.w400),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17),), 
              ),
             ),
              ),

                ///////////////////// confirm password text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
              height: MediaQuery.of(context).size.height/8,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 10),
              child: TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: obscure_Confirm_pass,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){setState(() {
                  obscure_Confirm_pass = !obscure_Confirm_pass;
                });}, icon: Icon(obscure_Confirm_pass ? Icons.visibility_outlined : Icons.visibility_off_outlined)),
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                hintText: S.of(context).ConfirmPassword,
                labelText: S.of(context).ConfirmPassword,
                labelStyle: TextStyle(fontWeight: FontWeight.w400),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17),), 
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
                          builder: (context) => Prehomepage(),
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