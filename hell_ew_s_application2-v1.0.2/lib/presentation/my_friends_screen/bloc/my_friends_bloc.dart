import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/my_friends_item_model.dart';
import 'package:hell_ew_s_application2/presentation/my_friends_screen/models/my_friends_model.dart';
part 'my_friends_event.dart';
part 'my_friends_state.dart';

class MyFriendsBloc extends Bloc<MyFriendsEvent, MyFriendsState> {
  MyFriendsBloc(MyFriendsState initialState) : super(initialState) {
    on<MyFriendsInitialEvent>(_onInitialize);
  }

  List<MyFriendsItemModel> fillMyFriendsItemList() {
    return List.generate(5, (index) => MyFriendsItemModel());
  }

  _onInitialize(
    MyFriendsInitialEvent event,
    Emitter<MyFriendsState> emit,
  ) async {
    emit(state.copyWith(fieldController: TextEditingController()));
    emit(state.copyWith(
        myFriendsModelObj: state.myFriendsModelObj
            ?.copyWith(myFriendsItemList: fillMyFriendsItemList())));
  }
}
