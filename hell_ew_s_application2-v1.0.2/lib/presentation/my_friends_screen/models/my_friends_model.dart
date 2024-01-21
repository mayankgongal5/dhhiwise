import 'package:equatable/equatable.dart';
import 'my_friends_item_model.dart';

// ignore: must_be_immutable
class MyFriendsModel extends Equatable {
  MyFriendsModel({this.myFriendsItemList = const []});

  List<MyFriendsItemModel> myFriendsItemList;

  MyFriendsModel copyWith({List<MyFriendsItemModel>? myFriendsItemList}) {
    return MyFriendsModel(
      myFriendsItemList: myFriendsItemList ?? this.myFriendsItemList,
    );
  }

  @override
  List<Object?> get props => [myFriendsItemList];
}
