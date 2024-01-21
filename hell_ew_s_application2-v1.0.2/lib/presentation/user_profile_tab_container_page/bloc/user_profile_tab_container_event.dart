// ignore_for_file: must_be_immutable

part of 'user_profile_tab_container_bloc.dart';

@immutable
abstract class UserProfileTabContainerEvent extends Equatable {}

class UserProfileTabContainerInitialEvent extends UserProfileTabContainerEvent {
  @override
  List<Object?> get props => [];
}
