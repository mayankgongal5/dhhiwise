// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent extends Equatable {}

class SignupInitialEvent extends SignupEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignupEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends SignupEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignupEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
