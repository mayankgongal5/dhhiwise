// ignore_for_file: must_be_immutable

part of 'events_tab_container_bloc.dart';

class EventsTabContainerState extends Equatable {
  EventsTabContainerState({this.eventsTabContainerModelObj});

  EventsTabContainerModel? eventsTabContainerModelObj;

  @override
  List<Object?> get props => [
        eventsTabContainerModelObj,
      ];
  EventsTabContainerState copyWith(
      {EventsTabContainerModel? eventsTabContainerModelObj}) {
    return EventsTabContainerState(
      eventsTabContainerModelObj:
          eventsTabContainerModelObj ?? this.eventsTabContainerModelObj,
    );
  }
}
