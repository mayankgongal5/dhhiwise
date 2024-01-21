// ignore_for_file: must_be_immutable

part of 'single_event_bloc.dart';

@immutable
abstract class SingleEventEvent extends Equatable {}

class SingleEventInitialEvent extends SingleEventEvent {
  @override
  List<Object?> get props => [];
}
