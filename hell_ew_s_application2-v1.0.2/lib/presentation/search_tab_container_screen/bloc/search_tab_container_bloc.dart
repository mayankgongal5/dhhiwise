import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/search_tab_container_screen/models/search_tab_container_model.dart';
part 'search_tab_container_event.dart';
part 'search_tab_container_state.dart';

class SearchTabContainerBloc
    extends Bloc<SearchTabContainerEvent, SearchTabContainerState> {
  SearchTabContainerBloc(SearchTabContainerState initialState)
      : super(initialState) {
    on<SearchTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchTabContainerInitialEvent event,
    Emitter<SearchTabContainerState> emit,
  ) async {
    emit(state.copyWith(fieldController: TextEditingController()));
  }
}
