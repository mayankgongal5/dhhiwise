// ignore_for_file: must_be_immutable

part of 'events_tab_container_bloc.dart';

@immutable
abstract class EventsTabContainerEvent extends Equatable {}

class EventsTabContainerInitialEvent extends EventsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
