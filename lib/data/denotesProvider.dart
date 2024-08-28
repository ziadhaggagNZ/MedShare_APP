import 'dart:convert';
import 'package:http/http.dart';
import 'package:medshare/main.dart';



    //  getdenotes() async {
        
    //     List denotesList = [];
    //   var response = await get(
    //     Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    //     var responsebody = jsonDecode(response.body);

    //         denotesList = responsebody;
    //         return denotesList;
      
    // }



// Future<List<dynamic>> getDenotes() async {
//   List<dynamic> denotesList = [];

//   var response = await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//   var responseBody = jsonDecode(response.body);
//   denotesList = responseBody;
  
//   return denotesList;
// }



  Future<List<dynamic>> getDenotes() async {
  List<dynamic> denotesList = [];

try
{
   var response = await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
     if (response.statusCode == 200) {
    var responseBody = jsonDecode(response.body);
    denotesList = responseBody;
  } else {
    // Handle error, maybe log it or show a message
    print("Failed to load data: ${response.statusCode}");
    denotesList[0] = response.statusCode as String;
    main();
  }
}
catch(e) 
{
print("eeeerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrroooooorrrrrrrrrrrrrrrr");
   print(denotesList.length);
   // denotesList = ["error"];
}
 
  

  
  return denotesList;
}






//   Future<List<dynamic>> getDenotes() async {
//   List<dynamic> denotesList = [];
//   //List<dynamic> denoteERRORCODE = [];

//   var response = await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  
//   if (response.statusCode == 200) {
//     var responseBody = jsonDecode(response.body);
//     denotesList = responseBody;
//   } else {
//     // Handle error, maybe log it or show a message
//     print("Failed to load data: ${response.statusCode}");
//     denotesList[0] = response.statusCode as String;
//     main();
//   }
  
//   return denotesList;
// }