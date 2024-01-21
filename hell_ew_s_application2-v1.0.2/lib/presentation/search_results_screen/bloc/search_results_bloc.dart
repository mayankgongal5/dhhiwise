import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_results_item_model.dart';
import 'package:hell_ew_s_application2/presentation/search_results_screen/models/search_results_model.dart';
part 'search_results_event.dart';
part 'search_results_state.dart';

class SearchResultsBloc extends Bloc<SearchResultsEvent, SearchResultsState> {
  SearchResultsBloc(SearchResultsState initialState) : super(initialState) {
    on<SearchResultsInitialEvent>(_onInitialize);
  }

  List<SearchResultsItemModel> fillSearchResultsItemList() {
    return List.generate(2, (index) => SearchResultsItemModel());
  }

  _onInitialize(
    SearchResultsInitialEvent event,
    Emitter<SearchResultsState> emit,
  ) async {
    emit(state.copyWith(fieldController: TextEditingController()));
    emit(state.copyWith(
        searchResultsModelObj: state.searchResultsModelObj
            ?.copyWith(searchResultsItemList: fillSearchResultsItemList())));
  }
}
