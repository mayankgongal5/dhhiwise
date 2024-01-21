// ignore_for_file: must_be_immutable

part of 'archived_message_bloc.dart';

class ArchivedMessageState extends Equatable {
  ArchivedMessageState({this.archivedMessageModelObj});

  ArchivedMessageModel? archivedMessageModelObj;

  @override
  List<Object?> get props => [
        archivedMessageModelObj,
      ];
  ArchivedMessageState copyWith(
      {ArchivedMessageModel? archivedMessageModelObj}) {
    return ArchivedMessageState(
      archivedMessageModelObj:
          archivedMessageModelObj ?? this.archivedMessageModelObj,
    );
  }
}
