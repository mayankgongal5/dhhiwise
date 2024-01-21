import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_item_model.dart';
import 'package:hell_ew_s_application2/presentation/search_page/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      searchItemList: fillSearchItemList(),
    )));
  }

  List<SearchItemModel> fillSearchItemList() {
    return List.generate(6, (index) => SearchItemModel());
  }
}
