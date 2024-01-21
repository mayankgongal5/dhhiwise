// ignore_for_file: must_be_immutable

part of 'search_results_bloc.dart';

@immutable
abstract class SearchResultsEvent extends Equatable {}

class SearchResultsInitialEvent extends SearchResultsEvent {
  @override
  List<Object?> get props => [];
}
