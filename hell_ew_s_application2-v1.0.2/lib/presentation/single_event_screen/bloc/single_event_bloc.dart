import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/single_event_item_model.dart';
import 'package:hell_ew_s_application2/presentation/single_event_screen/models/single_event_model.dart';
part 'single_event_event.dart';
part 'single_event_state.dart';

class SingleEventBloc extends Bloc<SingleEventEvent, SingleEventState> {
  SingleEventBloc(SingleEventState initialState) : super(initialState) {
    on<SingleEventInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleEventInitialEvent event,
    Emitter<SingleEventState> emit,
  ) async {
    emit(state.copyWith(
        singleEventModelObj: state.singleEventModelObj?.copyWith(
      singleEventItemList: fillSingleEventItemList(),
    )));
  }

  List<SingleEventItemModel> fillSingleEventItemList() {
    return List.generate(2, (index) => SingleEventItemModel());
  }
}
