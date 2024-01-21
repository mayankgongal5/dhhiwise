import 'package:equatable/equatable.dart';
import 'messages_item_model.dart';

// ignore: must_be_immutable
class MessagesModel extends Equatable {
  MessagesModel({this.messagesItemList = const []});

  List<MessagesItemModel> messagesItemList;

  MessagesModel copyWith({List<MessagesItemModel>? messagesItemList}) {
    return MessagesModel(
      messagesItemList: messagesItemList ?? this.messagesItemList,
    );
  }

  @override
  List<Object?> get props => [messagesItemList];
}
