import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'click_state.dart';

class ClickCubit extends Cubit<ClickState> {
  ClickCubit() : super(ClickInitial());

  int count =  0;
  
  void onClickPlusBright(Brightness brightness){
    if(brightness == Brightness.light){
      count++;
    }
    else {
      count += 2;
    }
    
    emit(Click(count));

  }

  void onClickMinusDark(){
    count--;
    emit(Click(count));
  }
}