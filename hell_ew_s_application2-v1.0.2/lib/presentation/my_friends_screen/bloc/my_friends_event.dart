// ignore_for_file: must_be_immutable

part of 'my_friends_bloc.dart';

@immutable
abstract class MyFriendsEvent extends Equatable {}

class MyFriendsInitialEvent extends MyFriendsEvent {
  @override
  List<Object?> get props => [];
}
