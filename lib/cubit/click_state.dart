part of 'click_cubit.dart';

@immutable
abstract class ClickState {}

class ClickInitial extends ClickState {}

class clickError extends ClickState {
  final String message;

  clickError(this.message);
}

class Click extends ClickState {
  final int count;
  Click(this.count);
}
