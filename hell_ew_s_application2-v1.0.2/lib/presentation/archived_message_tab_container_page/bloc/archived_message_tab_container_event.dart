// ignore_for_file: must_be_immutable

part of 'archived_message_tab_container_bloc.dart';

@immutable
abstract class ArchivedMessageTabContainerEvent extends Equatable {}

class ArchivedMessageTabContainerInitialEvent
    extends ArchivedMessageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
