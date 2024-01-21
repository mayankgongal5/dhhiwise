import 'package:equatable/equatable.dart';
import 'chat_item_model.dart';

// ignore: must_be_immutable
class ChatModel extends Equatable {
  ChatModel({this.chatItemList = const []});

  List<ChatItemModel> chatItemList;

  ChatModel copyWith({List<ChatItemModel>? chatItemList}) {
    return ChatModel(
      chatItemList: chatItemList ?? this.chatItemList,
    );
  }

  @override
  List<Object?> get props => [chatItemList];
}
