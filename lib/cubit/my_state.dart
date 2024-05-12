part of 'my_cubit.dart';

@immutable
abstract class MyState{}

class MyInitial extends MyState{}

class MyLoading extends MyState{}

class MyLoaded extends MyState{}

class MyError extends MyState{
  final String message;
  MyError(this.message);
}