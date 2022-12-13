part of 'bright_theme_cubit.dart';

@immutable
abstract class BrightThemeState {}

class BrightThemeInitial extends BrightThemeState {}

class clickBrightnessLight extends BrightThemeState{
  Brightness brightnessLight;
  clickBrightnessLight(this.brightnessLight);
}

class clickBrightnessDark extends BrightThemeState{
  Brightness brightnessDark;
  clickBrightnessDark(this.brightnessDark);
}