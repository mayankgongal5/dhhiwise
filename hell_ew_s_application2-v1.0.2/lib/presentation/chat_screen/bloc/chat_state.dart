// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

class ChatState extends Equatable {
  ChatState({
    this.writeBoxOneController,
    this.chatModelObj,
  });

  TextEditingController? writeBoxOneController;

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        writeBoxOneController,
        chatModelObj,
      ];
  ChatState copyWith({
    TextEditingController? writeBoxOneController,
    ChatModel? chatModelObj,
  }) {
    return ChatState(
      writeBoxOneController:
          writeBoxOneController ?? this.writeBoxOneController,
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
