import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medshare/blocs/medshare_bloc.dart';
import 'package:medshare/generated/l10n.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}


//List denotes = [];
//List denotesList = [];

class _HomepageState extends State<Homepage> {
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    setState(()  {
 context.read<medshareBloc>().add(GetDenotesevent());
 

    });

  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: 
    Column(
      children: [


Container(   /////  avatar image  and welcomeback  and  name  and  botification button  \\\\\\\
  height: MediaQuery.of(context).size.height / 6,
  width: MediaQuery.of(context).size.width,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // Avatar Image
      Container(
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/80),
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
        alignment: AlignmentDirectional.bottomStart,
        child: CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.07,
          backgroundImage: AssetImage("images/male_avatar_icon.png"),
        ),
      ),

      // Welcome Back and Name Text
      Expanded(
        child: Container(
          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/15 ),
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).WlcomeBackHomePage,
                style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.025, fontWeight: FontWeight.w300),
              ),
              Text(
                "ziad",
                style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ],
          ),
        ),
      ),

      // Notification Button
      Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
        alignment: AlignmentDirectional.bottomEnd,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none, size: MediaQuery.of(context).size.width * 0.08),
        ),
      ),
    ],
  ),
),



        // Container(/////  avatar image  and welcomeback  and  name  and  botification button  \\\\\\\
        //    height: MediaQuery.of(context).size.height/6,
        //       width: MediaQuery.of(context).size.width,
        //   //color: Colors.amber,
        //   child: Row(
        //     children: [
        //       Container(   ///////////////////////  avatar image  \\\\\\\
        //         padding: EdgeInsets.symmetric(horizontal: 10),
        //         alignment: AlignmentDirectional.bottomStart,
        //       child: CircleAvatar(
        //                 radius: 30,
        //                 //backgroundColor: Colors.red,
        //                 backgroundImage:  AssetImage("images/male_avatar_icon.png"),
        //               ),
        //       ),

        //       Container(///////////////////////  welcomeback and name text  \\\\\\\
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           children: [
        //             Text(S.of(context).WlcomeBackHomePage,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300)),
        //             Text("ziad",style: TextStyle(fontSize: 20),),
        //           ],
        //         ),
        //       ),

        //       Container(    ///////////   notification button  \\\\\\\\\\\\\\\\\\
        //         height: MediaQuery.of(context).size.height,
        //         width: MediaQuery.of(context).size.width/1.7,
        //         //alignment: Alignment.bottomRight,
        //         alignment: AlignmentDirectional.bottomEnd,
        //         //color: Colors.amber,
        //         child: IconButton(onPressed: (){},
        //          icon: Icon(Icons.notifications_none,size: 30,)),
        //       )
        //     ],
        //   ),
        // ),








                      ////////////  search text  \\\\\\\\\\\\\\\\\\\\\
          Container(
            height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width,
                //color: Colors.amber,
                padding: EdgeInsets.only(top: 12),
                margin: EdgeInsets.symmetric(horizontal: 15),
             child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_outlined),
                filled: true,
                fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                hintText: S.of(context).search,
                //labelText: "Search",
                labelStyle: TextStyle(fontWeight: FontWeight.w400),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0,style: BorderStyle.none,),borderRadius: BorderRadius.circular(17)), 
              ),
             ),
          ),







Column(    ///////////////////////////     denotes box     \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        children: [
          BlocBuilder<medshareBloc, medshareState>(
            builder: (context, state) {
             
               if(state is denotesDatastate)
              {
                return  ListView.builder(
                  physics: ClampingScrollPhysics(),
                shrinkWrap: true,
  itemCount: denotesDatalist.length,
  itemBuilder: (context, index) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.25), // shadow color
        spreadRadius: 5, // spread radius
        blurRadius: 7, // blur radius
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))
        ),
          height: MediaQuery.of(context).size.height/4.5,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 20),
         
          child: Column(children: [
            Row(
              children: [
              CircleAvatar(
                            radius: 35,
                            //backgroundColor: Colors.red,
                            backgroundImage:  AssetImage("images/drugs_icon.jpg"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20),
                            child: Column(children: [
                              Text("medicine name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              Container(child: Text("status")),
                            ],),
                          ),
            ],),
            Container(
                  height: MediaQuery.of(context).size.height/13.7,
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 12,right: 12,top: 18 ,),
                  child: MaterialButton(onPressed: (){},
                  child: Text(S.of(context).info,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
                   color: Color.fromRGBO(56, 97, 231, 0.612),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),)
                  ),
                  ),
          ],),
        ),
        Container(height: 20,),
      ],
    );
  },
  );
              }
              else
              {
                return SizedBox();
              }
            },
          ),


        ],
      ),



        
      ],
    ),
    );
  }
}




















// Container(
//   decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.all(Radius.circular(20))
//     ),
//       height: MediaQuery.of(context).size.height/4.5,
//       width: MediaQuery.of(context).size.width,
//       padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
//       margin: EdgeInsets.symmetric(horizontal: 20),
     
//       child: Column(children: [
//         Row(
//           children: [
//           CircleAvatar(
//                         radius: 30,
//                         //backgroundColor: Colors.red,
//                         backgroundImage:  AssetImage("images/male_avatar_icon.png"),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 20),
//                         child: Column(children: [
//                           Text("medicine name"),
//                           Text("Dentist | status"),
//                         ],),
//                       ),
//         ],),



//         Container(
//               height: MediaQuery.of(context).size.height/13.7,
//               width: MediaQuery.of(context).size.width,
//               //margin: EdgeInsets.only(top: 10),
//               padding: EdgeInsets.only(left: 12,right: 12,top: 18 ,),
//               child: MaterialButton(onPressed: (){},
//               child: Text("Info",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
//                color: Color.fromRGBO(56, 97, 231, 0.612),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(40),)
//               ),
//               ),
//       ],),
//     )