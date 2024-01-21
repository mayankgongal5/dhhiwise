import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/archived_message_tab_container_page/models/archived_message_tab_container_model.dart';
part 'archived_message_tab_container_event.dart';
part 'archived_message_tab_container_state.dart';

class ArchivedMessageTabContainerBloc extends Bloc<
    ArchivedMessageTabContainerEvent, ArchivedMessageTabContainerState> {
  ArchivedMessageTabContainerBloc(ArchivedMessageTabContainerState initialState)
      : super(initialState) {
    on<ArchivedMessageTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArchivedMessageTabContainerInitialEvent event,
    Emitter<ArchivedMessageTabContainerState> emit,
  ) async {}
}
