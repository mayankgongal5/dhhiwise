// ignore_for_file: must_be_immutable

part of 'search_results_bloc.dart';

class SearchResultsState extends Equatable {
  SearchResultsState({
    this.fieldController,
    this.searchResultsModelObj,
  });

  TextEditingController? fieldController;

  SearchResultsModel? searchResultsModelObj;

  @override
  List<Object?> get props => [
        fieldController,
        searchResultsModelObj,
      ];
  SearchResultsState copyWith({
    TextEditingController? fieldController,
    SearchResultsModel? searchResultsModelObj,
  }) {
    return SearchResultsState(
      fieldController: fieldController ?? this.fieldController,
      searchResultsModelObj:
          searchResultsModelObj ?? this.searchResultsModelObj,
    );
  }
}
