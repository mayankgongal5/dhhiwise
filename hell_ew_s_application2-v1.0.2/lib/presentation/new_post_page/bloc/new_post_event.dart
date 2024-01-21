// ignore_for_file: must_be_immutable

part of 'new_post_bloc.dart';

@immutable
abstract class NewPostEvent extends Equatable {}

class NewPostInitialEvent extends NewPostEvent {
  @override
  List<Object?> get props => [];
}
