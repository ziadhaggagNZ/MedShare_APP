part of 'medshare_bloc.dart';

@immutable
abstract class medshareState {}
int count = 0;

final class medshareStateInitial extends medshareState {}


class denotesDatastate extends medshareState{
  final List denotesDatalist;

  denotesDatastate({required this.denotesDatalist});
  
}
class countervaluechange extends medshareState{
  final int count;

  countervaluechange({required this.count});
}



