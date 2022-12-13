part of 'res_cubit.dart';

@immutable
abstract class ResState {}

class ResInitial extends ResState {
}

class clickRes extends ResState {
  var result;
  clickRes(this.result);
}

class clickClear extends ResState {
  var result;
  clickClear(this.result);
}