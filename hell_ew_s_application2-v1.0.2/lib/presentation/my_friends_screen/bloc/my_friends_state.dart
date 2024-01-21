// ignore_for_file: must_be_immutable

part of 'my_friends_bloc.dart';

class MyFriendsState extends Equatable {
  MyFriendsState({
    this.fieldController,
    this.myFriendsModelObj,
  });

  TextEditingController? fieldController;

  MyFriendsModel? myFriendsModelObj;

  @override
  List<Object?> get props => [
        fieldController,
        myFriendsModelObj,
      ];
  MyFriendsState copyWith({
    TextEditingController? fieldController,
    MyFriendsModel? myFriendsModelObj,
  }) {
    return MyFriendsState(
      fieldController: fieldController ?? this.fieldController,
      myFriendsModelObj: myFriendsModelObj ?? this.myFriendsModelObj,
    );
  }
}
