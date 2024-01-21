import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/events_tab_container_page/models/events_tab_container_model.dart';
part 'events_tab_container_event.dart';
part 'events_tab_container_state.dart';

class EventsTabContainerBloc
    extends Bloc<EventsTabContainerEvent, EventsTabContainerState> {
  EventsTabContainerBloc(EventsTabContainerState initialState)
      : super(initialState) {
    on<EventsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EventsTabContainerInitialEvent event,
    Emitter<EventsTabContainerState> emit,
  ) async {}
}
