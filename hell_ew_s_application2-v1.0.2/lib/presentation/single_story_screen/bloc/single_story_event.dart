// ignore_for_file: must_be_immutable

part of 'single_story_bloc.dart';

@immutable
abstract class SingleStoryEvent extends Equatable {}

class SingleStoryInitialEvent extends SingleStoryEvent {
  @override
  List<Object?> get props => [];
}
