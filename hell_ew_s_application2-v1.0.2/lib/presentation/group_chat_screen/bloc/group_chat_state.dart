// ignore_for_file: must_be_immutable

part of 'group_chat_bloc.dart';

class GroupChatState extends Equatable {
  GroupChatState({
    this.writeBoxOneController,
    this.groupChatModelObj,
  });

  TextEditingController? writeBoxOneController;

  GroupChatModel? groupChatModelObj;

  @override
  List<Object?> get props => [
        writeBoxOneController,
        groupChatModelObj,
      ];
  GroupChatState copyWith({
    TextEditingController? writeBoxOneController,
    GroupChatModel? groupChatModelObj,
  }) {
    return GroupChatState(
      writeBoxOneController:
          writeBoxOneController ?? this.writeBoxOneController,
      groupChatModelObj: groupChatModelObj ?? this.groupChatModelObj,
    );
  }
}
