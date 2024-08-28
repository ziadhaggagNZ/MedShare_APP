
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:medshare/auth/signin.dart';

class first_looding extends StatefulWidget {
  const first_looding({super.key});

  @override
  State<first_looding> createState() => _first_loodingState();


}



class _first_loodingState extends State<first_looding> {
  @override
  void initState() {
    super.initState();
    // Use Future.delayed to navigate after a delay
    Future.delayed(Duration(seconds: 6), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => signin(),),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center( 
          child: 
          Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                 height: MediaQuery.of(context).size.height/2,            
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4,right: MediaQuery.of(context).size.width/4),
                child: Image(image: AssetImage("images/medshare_logo.PNG")),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                height: MediaQuery.of(context).size.height/5,  
                child: Text("MED SHEAR",style: TextStyle(fontSize: 40,),),),
              Container(
                height: MediaQuery.of(context).size.height/5,
                alignment: Alignment.bottomCenter,   //Color.fromRGBO(200, 141, 233, 100)
                child: CircularProgressIndicator( valueColor: new AlwaysStoppedAnimation<Color>(Color.fromRGBO(184, 105, 230, 1)),),)
            ],
          )
          
          )




      ],)
    );
  }
}