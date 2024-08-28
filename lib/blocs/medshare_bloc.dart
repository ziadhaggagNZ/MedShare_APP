import 'package:bloc/bloc.dart';
import 'package:medshare/data/denotesProvider.dart';
import 'package:meta/meta.dart';

part 'medshare_event.dart';
part 'medshare_state.dart';

List denotesDatalist =[];


class medshareBloc extends Bloc<medshareEvent, medshareState> {
  medshareBloc() : super(medshareStateInitial()) {

    


       on<medshareEvent>((event, emit) async {
      // TODO: implement event handler
      if(event is GetDenotesevent)
      {
        denotesDatalist = await  getDenotes() ;
        emit(denotesDatastate(denotesDatalist: denotesDatalist));
      }
      else    if(event is plus)
      {
        count=count+1;
        emit(countervaluechange(count: count));
      }
      
    });



      
    }
  
  

}






// class medshareBloc extends Bloc<medshareEvent, medshareState> {
//   medshareBloc() : super(medshareStateInitial()) {
//     on<medshareEvent>((event, emit) {
//       // TODO: implement event handler
//       if(event is male)
//       {
//         emit(gendervalechanged("images/male_avatar_icon.png"));
//       }
//       // else if(event is female)
//       // {
//       //   emit(gendervalechanged("images/female_avatar_icon.png"));
//       // }
//     });
//   }
// }
