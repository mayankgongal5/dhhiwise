import 'package:equatable/equatable.dart';
import 'listavatar1_item_model.dart';

// ignore: must_be_immutable
class GroupChatModel extends Equatable {
  GroupChatModel({this.listavatar1ItemList = const []});

  List<Listavatar1ItemModel> listavatar1ItemList;

  GroupChatModel copyWith({List<Listavatar1ItemModel>? listavatar1ItemList}) {
    return GroupChatModel(
      listavatar1ItemList: listavatar1ItemList ?? this.listavatar1ItemList,
    );
  }

  @override
  List<Object?> get props => [listavatar1ItemList];
}
