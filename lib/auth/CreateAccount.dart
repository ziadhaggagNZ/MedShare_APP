import 'package:flutter/material.dart';
import 'package:medshare/auth/FillProfile.dart';
import 'package:medshare/auth/signin.dart';
import 'package:medshare/generated/l10n.dart';
//import 'package:medshare/generated/l10n.dart';

class CreateAcount extends StatefulWidget {
  const CreateAcount({super.key});

  @override
  State<CreateAcount> createState() => _CreateAcountState();
}
bool obscure_pass = true;
bool obscure_Confirm_pass = true;

class _CreateAcountState extends State<CreateAcount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [


          ///////////////////// sign in button \\\\\\\\\\\\\\\\\\\\\\\
           Container(
              alignment: AlignmentDirectional.bottomEnd,
              height: MediaQuery.of(context).size.height/8,
              width: MediaQuery.of(context).size.width,
              child: TextButton(onPressed: () {
                ///////////////////////////////////
                         Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => signin(),
                        ),
                      );
              }, child: Text(S.of(context).signin,style: TextStyle(color: Color.fromRGBO(56, 97, 231, 0.612),fontSize: 17,fontWeight: FontWeight.bold),),),
              ),
              
              
              ///////////////////// create account text \\\\\\\\\\\\\\\\\\\\\\\
              Container(
                alignment: AlignmentDirectional.bottomStart,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20,right: 20),
              height: MediaQuery.of(context).size.height/4.8,
              child: Column(children: [Container(child: Text(S.of(context).createyour,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold))),
              Container(child: Text(S.of(context).Account,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),))],),
              ),


       /////////////////// create account text \\\\\\\\\\\\\\\\\\\\\\\
              // Container(
              //   alignment: Alignment.bottomLeft,
              //   width: MediaQuery.of(context).size.width,
              //   margin: EdgeInsets.only(left: 20),
              // height: MediaQuery.of(context).size.height/4.8,
              // child: Column(children: [Container(alignment: Alignment.topLeft,child: Text(S.of(context).title1,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold))),
              // Container(alignment: Alignment.topLeft,child: Text(S.of(context).title2,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),))],),
              // ),



                              ///////////////////// user name text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
              height: MediaQuery.of(context).size.height/11,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
             child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                hintText: S.of(context).UserName,
                labelText: S.of(context).UserName,
                labelStyle: TextStyle(fontWeight: FontWeight.w400),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
              ),
             ),
              ),


                    ///////////////////// email text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
              height: MediaQuery.of(context).size.height/11,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
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

                      ///////////////////// password text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 0),
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
              height: MediaQuery.of(context).size.height/11,
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


              //////////////////////// create account boutton \\\\\\\\\\\\\\
                Container(
              height: MediaQuery.of(context).size.height/9,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 12,right: 12,top: 18 , bottom: 10),
              child: MaterialButton(onPressed: (){
                /////////////
                         Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FillProfile(),
                        ),
                      );
              },
              child: Text(S.of(context).createAccount,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
               color: Color.fromRGBO(56, 97, 231, 0.612),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),)
              ),
              ),

            //////////////////////  divider \\\\\\\\\\\\\\\\\\\\\\\\\\
            Container(
              height: MediaQuery.of(context).size.height/17,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(child: Divider()),
                Text(S.of(context).orcreatewith,style: TextStyle(fontWeight: FontWeight.w300),),
                Expanded(child: Divider()),
              ],)
              ),


              //////////////////  social media icons \\\\\\\\\\\\\\\\\\
               Container(
                margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/5,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1,color: Color.fromRGBO(214, 211, 211, 1)),),
                    child: InkWell(onTap: () {
                                    //////////////////
                                  },
                                  child: Image(image: AssetImage("images/facebook_icon.png")),
                                  ),
                  )
                  ),
                    Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/5,
              //margin: EdgeInsets.only(left: 50,),
              margin: EdgeInsetsDirectional.only(start: 50),
                  child: Container(
                    //color: Colors.red,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1,color: Color.fromRGBO(214, 211, 211, 1)),),
                    child: InkWell(onTap: () {
                                    //////////////////
                                  },
                                  
                                  child: Image(image: AssetImage("images/google_icon.png")),
                                  ),
                  )
                  ),
                ],
              ),
              ),

        ],
      ),
    ),);
  }
}