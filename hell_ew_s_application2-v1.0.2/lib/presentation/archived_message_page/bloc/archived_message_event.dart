// ignore_for_file: must_be_immutable

part of 'archived_message_bloc.dart';

@immutable
abstract class ArchivedMessageEvent extends Equatable {}

class ArchivedMessageInitialEvent extends ArchivedMessageEvent {
  @override
  List<Object?> get props => [];
}
