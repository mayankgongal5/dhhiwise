import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chat_item_model.dart';
import 'package:hell_ew_s_application2/presentation/chat_screen/models/chat_model.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(ChatState initialState) : super(initialState) {
    on<ChatInitialEvent>(_onInitialize);
  }

  List<ChatItemModel> fillChatItemList() {
    return List.generate(2, (index) => ChatItemModel());
  }

  _onInitialize(
    ChatInitialEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(writeBoxOneController: TextEditingController()));
    emit(state.copyWith(
        chatModelObj:
            state.chatModelObj?.copyWith(chatItemList: fillChatItemList())));
  }
}
