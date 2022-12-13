import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bright_theme_state.dart';

class BrightnessCubit extends Cubit<BrightThemeState> {
  BrightnessCubit() : super(BrightThemeInitial());

  void onClickLight(Brightness brightness) {
    if (brightness == Brightness.dark) {
      brightness = Brightness.light;
      emit(clickBrightnessLight(brightness));
    } else {
      brightness = Brightness.dark;
      emit(clickBrightnessLight(brightness));
    }
  }
}
