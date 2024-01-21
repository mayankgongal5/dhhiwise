// ignore_for_file: must_be_immutable

part of 'user_profile_bloc.dart';

@immutable
abstract class UserProfileEvent extends Equatable {}

class UserProfileInitialEvent extends UserProfileEvent {
  @override
  List<Object?> get props => [];
}
