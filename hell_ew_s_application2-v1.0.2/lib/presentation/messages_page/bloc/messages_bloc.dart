import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messages_item_model.dart';
import 'package:hell_ew_s_application2/presentation/messages_page/models/messages_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessagesInitialEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(
        messagesModelObj: state.messagesModelObj
            ?.copyWith(messagesItemList: fillMessagesItemList())));
  }

  List<MessagesItemModel> fillMessagesItemList() {
    return List.generate(7, (index) => MessagesItemModel());
  }
}
