import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medshare/auth/CreateNewPassord.dart';
import 'package:medshare/generated/l10n.dart';
import 'package:medshare/main.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}
List<String> digitValues = ['', '', '', '', '', ''];

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
                  Container(////  forget password text \\\\\\
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width,
                  child: Text(S.of(context).forgotpassPage,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
        
        
               Container(////  code has been sent to \\\\\\
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height/7,
                  width: MediaQuery.of(context).size.width,
                  child: Text(S.of(context).Codehasbeensentto,style: TextStyle(fontSize: 20,),),
                ),
        
        
        
                Container(////  current user email in text \\\\\\
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 5),
                  child: Text("example@gmail.coms",style: TextStyle(fontSize: 18,),),
                ),
        
        
              Container(
                 height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row( /////////////////////////     digits    \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: MediaQuery.of(context).size.width/8,
                      child: TextField(
                        onChanged: (value) {
                          digitValues[0] = value;
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                    labelStyle: TextStyle(fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
                  ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                
                
                    SizedBox(
                      height: 68,
                      width: MediaQuery.of(context).size.width/8,
                      child: TextField(
                        onChanged: (value) {
                          digitValues[1] = value;
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                    labelStyle: TextStyle(fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
                  ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                
                
                    SizedBox(
                      height: 68,
                      width: MediaQuery.of(context).size.width/8,
                      child: TextField(
                        onChanged: (value) {
                          digitValues[2] = value;
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                    labelStyle: TextStyle(fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
                  ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                
                
                
                    SizedBox(
                      height: 68,
                      width: MediaQuery.of(context).size.width/8,
                      child: TextField(
                        onChanged: (value) {
                          digitValues[3] = value;
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                    labelStyle: TextStyle(fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
                  ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                
                
                
                
                    SizedBox(
                      height: 68,
                      width: MediaQuery.of(context).size.width/8,
                      child: TextField(
                        onChanged: (value) {
                          digitValues[4] = value;
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                    labelStyle: TextStyle(fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
                  ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                
                
                
                
                    SizedBox(
                      height: 68,
                      width: MediaQuery.of(context).size.width/8,
                      child: TextField(
                        onChanged: (value) {
                          digitValues[5] = value;
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                    labelStyle: TextStyle(fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
                  ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        
        
                 Container(////  Didn't received code?Resend  text \\\\\\
                 //color: Colors.amber,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width,
                 // padding: EdgeInsets.only(top: 24,left:MediaQuery.of(context).size.width/3.9,),
                  child: Row(
                    children: [
                      Container(
                        width: languageset == "en"?
                          MediaQuery.of(context).size.width/3.7
                        :   MediaQuery.of(context).size.width/3.1,
                        ),
                      Text(S.of(context).Didntreceivedcode,style: TextStyle(fontSize: 15,),),
                      
                      InkWell(child: Text(S.of(context).Resend,style: TextStyle(fontSize: 15,color: Color.fromARGB(141, 179, 101, 239)),),  
                      onTap: () {
                        ///////////////
                      },
                      ),
                      // TextButton(onPressed: (){
                      //   //////////////////
                      // },
                      //  child:Text("Resend",style: TextStyle(fontSize: 15,color: Color.fromARGB(141, 179, 101, 239)),), 
                      // ),
                      
                    ],
                  )
                ),
        
        
               Container( ///////////  verify button  \\\\\\\\\\\\\\
                height: MediaQuery.of(context).size.height/9,
                width: MediaQuery.of(context).size.width,
                //margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 12,right: 12,top: 5 , bottom: 23),
                child: MaterialButton(onPressed: (){
                  /////////////////
                                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Createnewpassord(),
                        ),
                      );
                  print("${digitValues.join()}");  //// string  \\\\\\\
                },
                child: Text(S.of(context).verfy,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
                 color: Color.fromRGBO(56, 97, 231, 0.612),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),)
                ),
                ),
        
          ],
        ),
      ),
    );
  }
}