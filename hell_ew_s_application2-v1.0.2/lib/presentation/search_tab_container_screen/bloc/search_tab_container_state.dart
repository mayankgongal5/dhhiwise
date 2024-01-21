// ignore_for_file: must_be_immutable

part of 'search_tab_container_bloc.dart';

class SearchTabContainerState extends Equatable {
  SearchTabContainerState({
    this.fieldController,
    this.searchTabContainerModelObj,
  });

  TextEditingController? fieldController;

  SearchTabContainerModel? searchTabContainerModelObj;

  @override
  List<Object?> get props => [
        fieldController,
        searchTabContainerModelObj,
      ];
  SearchTabContainerState copyWith({
    TextEditingController? fieldController,
    SearchTabContainerModel? searchTabContainerModelObj,
  }) {
    return SearchTabContainerState(
      fieldController: fieldController ?? this.fieldController,
      searchTabContainerModelObj:
          searchTabContainerModelObj ?? this.searchTabContainerModelObj,
    );
  }
}
