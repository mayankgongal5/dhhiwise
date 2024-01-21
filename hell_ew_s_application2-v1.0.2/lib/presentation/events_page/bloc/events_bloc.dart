import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/events_item_model.dart';
import 'package:hell_ew_s_application2/presentation/events_page/models/events_model.dart';
part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(EventsState initialState) : super(initialState) {
    on<EventsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EventsInitialEvent event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(
        eventsModelObj: state.eventsModelObj?.copyWith(
      eventsItemList: fillEventsItemList(),
    )));
  }

  List<EventsItemModel> fillEventsItemList() {
    return List.generate(2, (index) => EventsItemModel());
  }
}
