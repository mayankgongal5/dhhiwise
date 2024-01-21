// ignore_for_file: must_be_immutable

part of 'single_post_bloc.dart';

@immutable
abstract class SinglePostEvent extends Equatable {}

class SinglePostInitialEvent extends SinglePostEvent {
  @override
  List<Object?> get props => [];
}
