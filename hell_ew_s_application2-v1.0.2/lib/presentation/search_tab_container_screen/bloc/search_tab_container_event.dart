// ignore_for_file: must_be_immutable

part of 'search_tab_container_bloc.dart';

@immutable
abstract class SearchTabContainerEvent extends Equatable {}

class SearchTabContainerInitialEvent extends SearchTabContainerEvent {
  @override
  List<Object?> get props => [];
}
