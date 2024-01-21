import 'package:equatable/equatable.dart';
import 'search_results_item_model.dart';

// ignore: must_be_immutable
class SearchResultsModel extends Equatable {
  SearchResultsModel({this.searchResultsItemList = const []});

  List<SearchResultsItemModel> searchResultsItemList;

  SearchResultsModel copyWith(
      {List<SearchResultsItemModel>? searchResultsItemList}) {
    return SearchResultsModel(
      searchResultsItemList:
          searchResultsItemList ?? this.searchResultsItemList,
    );
  }

  @override
  List<Object?> get props => [searchResultsItemList];
}
