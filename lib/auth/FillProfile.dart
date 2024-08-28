import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:medshare/generated/l10n.dart';
import 'package:medshare/prehomepage.dart';

class FillProfile extends StatefulWidget {
  const FillProfile({super.key});

  @override
  State<FillProfile> createState() => _FillProfileState();
}
  DateTime? date = DateTime.now();
  DateTime? selectedDate ;
  TextEditingController gender = TextEditingController(); 
  File? idselectedImage;
  File? AvatarselectedImage;
  File icon_male_File = File("images/male_avatar_icon.png");
  bool profilePhoto_icon = true;
  //bool showphoto = false;




class _FillProfileState extends State<FillProfile> {
// @override
// void initState() {
//     // TODO: implement initState
//     gender = gender;
//     setState(() {});
//     super.initState();
//     setState(() {});
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(children: [


          ///////////  fillprofil text    &     skip button \\\\\\\\\\\\\\
          Container(
              height: MediaQuery.of(context).size.height/8,
              width: MediaQuery.of(context).size.width,
            child:Row(children: [
              Container(////  left white \\\\
                width: MediaQuery.of(context).size.width/3,
              ),

               Container(////  fill profile text \\\\\\
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width/3,
                child: Text(S.of(context).FillProfile,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

               Container(/////    skip button  \\\\\\\\\\\
                //alignment: Alignment.bottomRight,
                alignment: AlignmentDirectional.bottomEnd,
                width: MediaQuery.of(context).size.width/3,
                child: TextButton(onPressed: () {
                  ///////////////////////////////
                },
                 child: Text(S.of(context).skip,style: TextStyle(color: Color.fromRGBO(83, 117, 228, 0.612),fontSize: 17,))
                ),
              ),
            ],),
          ),



          

          Container(///////////      photo and edit button \\\\\\\\\\\\\\\\\
            height: MediaQuery.of(context).size.height/4.5,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              height: 140,
              width: 140,
              child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 90,
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
              radius: 80,  
             backgroundImage: gender.text == S.of(context).female ?  AssetImage("images/female_avatar_icon.png") : AssetImage("images/male_avatar_icon.png") ,
              //backgroundImage: gender.text == "Female" ?   AssetImage("images/female_avatar_icon.png") : AssetImage("images/male_avatar_icon.png") ,
               // backgroundImage: FileImage(File(AvatarselectedImage!.path)),
                //backgroundImage: profilePhoto_icon == true ?    AssetImage(path) : FileImage(File(AvatarselectedImage!.path)) ,
                  //backgroundImage: profilePhoto_icon == false ? FileImage(File("images/male_avatar_icon.png")) : FileImage(File(AvatarselectedImage!.path)),
                        //child: Image(image: AssetImage("images/female_avatar_icon.png")) ,
                        child: profilePhoto_icon == true ? Text("") : CircleAvatar(radius: 80 ,backgroundImage: FileImage(File(AvatarselectedImage!.path)),),
                        ),
                      ),
                      Positioned(right: 0,bottom: 0,child: InkWell(
                        onTap: () async{
                        
                         await TakePhoto(S.of(context).addPhoto, "avatar");
                          //avatarImagePath();
                          //print("${path}");
                          setState(() {});
                        },                        
                        child: Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage("images/green_edit_icon.png"),),
                      ),)),
                    ]
                  ),
            ) 
          ),


                      ///////////////////// Fill name text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
                padding: EdgeInsets.only(top: 7),
                //color: Colors.amber,
              height: MediaQuery.of(context).size.height/11,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
             child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                hintText: S.of(context).name,
                labelText: S.of(context).name,
                labelStyle: TextStyle(fontWeight: FontWeight.w400),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
              ),
             ),
              ),



             ///////////////////// date text field \\\\\\\\\\\\\\\\\\\\\\\   date saved in selectedDate ////////////////
Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 10),
              child: TextField(
              keyboardType: TextInputType.none,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: ()async {
                  selectedDate = await showDatePicker(
                    context: context, 
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1920), 
                    lastDate: DateTime.now());
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.date_range_outlined)),
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                hintText: selectedDate == null? S.of(context).year_month_day : "${selectedDate?.year}/${selectedDate?.month}/${selectedDate?.day}",
                labelText: selectedDate == null? S.of(context).DateOfBirth : "${selectedDate?.year}/${selectedDate?.month}/${selectedDate?.day}",
                labelStyle: TextStyle(fontWeight: FontWeight.w400),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17),), 
              ),
             ),
              ),



                       ///////////////////// email text field \\\\\\\\\\\\\\\\\\\\\\\
              Container(
              height: MediaQuery.of(context).size.height/11,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 10),
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


              Container(  ///////////////////  phone number text field \\\\\\\\\\\\\\\\\\\\\
                 height: MediaQuery.of(context).size.height/11,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 10),
                child: IntlPhoneField(
    decoration: InputDecoration(
        labelText: S.of(context).PhoneNumber,
        filled: true,
        fillColor: Color.fromRGBO(223, 225, 227, 0.612),
        border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
        counterText: "",
    ),
    showCursor: true,
    cursorHeight: 18,
    initialCountryCode: 'EG', 
    onChanged: (phone) {
      
        print(phone.completeNumber);////////////////////
        print(phone.number);///////////////////
    },
),),





// Container(           /////////////  gendedr list \\\\\\\\\\\\\\\\\\\
//    height: MediaQuery.of(context).size.height/10,
//                 width: MediaQuery.of(context).size.width,
//                 margin: EdgeInsets.symmetric(horizontal: 12),
//                 padding: EdgeInsets.only(top: 10),
//                 //color: Colors.amber,
//                 child: drop_down_list(
//                     datalist: [
//                       SelectedListItem(name: S.of(context).male),
//                       SelectedListItem(name: S.of(context).female),
//                     ],
//                     textEditingController: gender,
//                      title: S.of(context).gender,
//                       hint: S.of(context).gender,
//                       isCitySelected: true),
                
// ),


Container(   ////////////  gendedr list \\\\\\\\\\\\\\\\\\\
          height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 10,),
              //padding: EdgeInsets.only(top: 10),
              //color: Colors.amber,
  child: InkWell(onTap: () {
    Takegender();
    
  },
  child: TextField(   
              enabled: false,
              keyboardType: TextInputType.none,
              cursorHeight: 0,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.arrow_drop_down,size: 40,color: Colors.black,),
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                //hintText: "id",
                labelText: gender.text == "" ? S.of(context).gender :gender.text,
                labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
              ),
             ),
  )
),





Container(   ////////////// upload id \\\\\\\\\\\\\\\\\\\
          height: MediaQuery.of(context).size.height/11,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(top: 4),
              //color: Colors.amber,
  child: InkWell(onTap: () async{
    await TakePhoto(S.of(context).addId, "id");
    
  },
  child: TextField(   
              enabled: false,
              keyboardType: TextInputType.none,
              cursorHeight: 0,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.arrow_drop_down,size: 40,color: Colors.black,),
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                //hintText: "id",
                labelText: S.of(context).UploadId,
                labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
              ),
             ),
  )
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


        ],) ,
        ),
    );
  }


 Future pickImageFromGallery(String type) async{
  final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
  setState((){
    if(returnedImage == null) return;
    if(type == "id") idselectedImage = File(returnedImage.path);
    else if(type == "avatar") 
    {
      profilePhoto_icon = false;
      AvatarselectedImage = File(returnedImage.path);
      
    }
  });
}
  
Future pickImageFromCamera(String type) async{
  final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);
  setState((){
    if(returnedImage == null) return;
       if(type == "id") idselectedImage = File(returnedImage.path);
    else if(type == "avatar") 
    {
      profilePhoto_icon = false;
      AvatarselectedImage = File(returnedImage.path);
    }
  });
}






bool showphoto = false;

TakePhoto(String title, String type) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return SizedBox(
            height: 400,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "${title}",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        pickImageFromCamera("${type}");
                      });
                    },
                    child: Text(
                      S.of(context).UploadPhotoFromCamera,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    color: Color.fromRGBO(56, 97, 231, 0.612),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height / 17,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(child: Divider()),
                        Text(
                          "   ${S.of(context).or}    ",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),

                  MaterialButton(
                    onPressed: () async {
                      await pickImageFromGallery("${type}");
                      setState(() {});
                    },
                    child: Text(
                      S.of(context).UploadPhotoFromGallery,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    color: Color.fromRGBO(56, 97, 231, 0.612),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 200,
                    child: type == "id"
                        ? idselectedImage != null
                            ? showphoto
                                ? Image.file(idselectedImage!)
                                : Image(
                                    image: AssetImage("images/done_icon.png"))
                            : Text(S.of(context).NotSelectedImage)
                        : AvatarselectedImage != null
                            ? showphoto
                                ? Image.file(AvatarselectedImage!)
                                : Image(
                                    image: AssetImage("images/done_icon.png"))
                            : Text(S.of(context).NotSelectedImage),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              showphoto = !showphoto;
                            });
                          },
                          child: Text(
                            S.of(context).ShowImage,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          color: Color.fromRGBO(56, 97, 231, 0.612),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Text(
                          S.of(context).done,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        color: Color.fromRGBO(56, 97, 231, 0.612),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}



//                  ///////////////////////////   take photo  function   \\\\\\\\\\\\\\\\\\\\\\\\
//  TakePhoto(String title , String type  )
// {
// bool showphoto = false;
//   showModalBottomSheet(context: context, builder: (BuildContext context){
//       return SizedBox(
//         height: 400,
//         child: Center(
//           child: Column(children: [
//             Container(
//               //color: Colors.amber,
//               height: 50,
//               alignment: Alignment.bottomCenter,
//               child: Text("${title}",style: TextStyle(color: Colors.black,fontSize: 30),),
//               ),
        
//                          MaterialButton(onPressed: (){setState(() {
//                             pickImageFromCamera("${type}");
//                            setState(() {});
//                          });},
//                                 child: Text(S.of(context).UploadPhotoFromCamera,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
//                                  color: Color.fromRGBO(56, 97, 231, 0.612),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),)
//                                 ),

//                                  Container(
//               height: MediaQuery.of(context).size.height/17,
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Row(children: [
//                 Expanded(child: Divider()),
//                 Text("   ${S.of(context).or}    ",style: TextStyle(fontWeight: FontWeight.w300),),
//                 Expanded(child: Divider()),
//               ],)
//               ),



//                 MaterialButton(onPressed: ()async{
//                   await pickImageFromGallery("${type}");
//                   setState(() {});
//                 },
//                                 child: Text(S.of(context).UploadPhotoFromGallery,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
//                                  color: Color.fromRGBO(56, 97, 231, 0.612),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),)
//                                 ),
                
//                 Container(
//                   alignment: Alignment.center,
//                   height: 150,
//                   width: 200,
//                  child: type == "id" ?
//                  idselectedImage != null ?  showphoto == false ? Image(image: AssetImage("images/done_icon.png")) : Image.file(idselectedImage!,) : Text(S.of(context).NotSelectedImage) 
//                  :
//                  AvatarselectedImage != null ?  showphoto == false ? Image(image: AssetImage("images/done_icon.png")) : Image.file(AvatarselectedImage!,) : Text(S.of(context).NotSelectedImage) ,
//                  //child: idselectedImage != null ?  showphoto == false ? Image(image: AssetImage("images/done_icon.png")) : Image.file(idselectedImage!,) : Text("not selected image") ,
                 
                 
//                 ),

//                 Row(mainAxisAlignment: MainAxisAlignment.center,children: [
//                    Container(
//                     padding: EdgeInsets.only(right: 20,left: 20),
//                      child: MaterialButton(onPressed: (){setState(() {
//                        showphoto = ! showphoto;
//                       //  Navigator.pop(context);
                       
//                       //  TakePhoto(title, type);
                                       
//                      setState(() {});
//                                       });},
//                                   child: Text(S.of(context).ShowImage,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
//                                    color: Color.fromRGBO(56, 97, 231, 0.612),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),)
//                                   ),
//                    ),

//                                  MaterialButton(onPressed: (){setState(() {
//                   Navigator.pop(context);
//                    setState(() {});
//                  });},
//                                 child: Text(S.of(context).done,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
//                                  color: Color.fromRGBO(56, 97, 231, 0.612),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),)
//                                 ),
//                 ],)
                    
                
//           ],)
//         ),
        
//       );
//     },);
// }









 Takegender()
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
             child: Text(S.of(context).gender,style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)
              ),
            Container(
              height: 60,
              alignment: AlignmentDirectional.topStart,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              //color: Colors.amber,
              child: TextButton(onPressed: (){
                gender.text = S.of(context).male;
                Navigator.pop(context);
                setState(() {});
              },
               child: Text(S.of(context).male,style: TextStyle(fontSize: 18,color: Colors.black,)))
              ),
              //Divider(),
            Container(
              height: 50,
              alignment: AlignmentDirectional.topStart,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              //color: Colors.amber,
              child: TextButton(onPressed: (){
                 gender.text = S.of(context).female;
                Navigator.pop(context);
                setState(() {});
              }, child: Text(S.of(context).female,style: TextStyle(fontSize: 18,color: Colors.black,)))
              ),
          ],)
        ),
        
      );
    },);
}


}

// editButton()
// {
//   if(AvatarselectedImage == null)
//   {
//     return;
//   }
//   else
//   {
//     return 
//   }
  
// }

//   avatarImagePath()
//  {
// //  String path;
//    //backgroundImage: gender.text == "Female" ?   AssetImage("images/female_avatar_icon.png") : AssetImage("images/male_avatar_icon.png") ,
//   if(AvatarselectedImage != null)
//   {
//     //path = AvatarselectedImage!.path;
//     return AvatarselectedImage;
//   }
//   else if(gender.text == "Female")
//    {
//      path = "images/female_avatar_icon.png";
//     return path;
//    }
//   else
//   {
//     path =   "images/male_avatar_icon.png";
//     return path;  
//   }
//  }


