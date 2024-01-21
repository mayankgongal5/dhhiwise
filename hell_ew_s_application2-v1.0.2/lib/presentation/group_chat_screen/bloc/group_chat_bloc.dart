import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listavatar1_item_model.dart';
import 'package:hell_ew_s_application2/presentation/group_chat_screen/models/group_chat_model.dart';
part 'group_chat_event.dart';
part 'group_chat_state.dart';

class GroupChatBloc extends Bloc<GroupChatEvent, GroupChatState> {
  GroupChatBloc(GroupChatState initialState) : super(initialState) {
    on<GroupChatInitialEvent>(_onInitialize);
  }

  List<Listavatar1ItemModel> fillListavatar1ItemList() {
    return List.generate(2, (index) => Listavatar1ItemModel());
  }

  _onInitialize(
    GroupChatInitialEvent event,
    Emitter<GroupChatState> emit,
  ) async {
    emit(state.copyWith(writeBoxOneController: TextEditingController()));
    emit(state.copyWith(
        groupChatModelObj: state.groupChatModelObj
            ?.copyWith(listavatar1ItemList: fillListavatar1ItemList())));
  }
}
