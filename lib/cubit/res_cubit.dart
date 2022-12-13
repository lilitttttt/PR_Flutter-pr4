import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'res_state.dart';

class ResCubit extends Cubit<ResState> {
  ResCubit() : super(ResInitial());

  List<Widget> result = [];

  void onClickResult(Brightness brightness, String count){
    if(brightness == Brightness.light){
      result.add(Text("Светлая тема: $count"));
      emit(clickRes(result));
    }
    else{
      result.add(Text("Темная тема: $count"));
      emit(clickRes(result));
    }
  }

  void onClickClear(){
    result.clear();
    emit(clickRes(result));
  }
}