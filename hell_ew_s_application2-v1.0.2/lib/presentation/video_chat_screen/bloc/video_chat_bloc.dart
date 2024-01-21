import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/video_chat_screen/models/video_chat_model.dart';
part 'video_chat_event.dart';
part 'video_chat_state.dart';

class VideoChatBloc extends Bloc<VideoChatEvent, VideoChatState> {
  VideoChatBloc(VideoChatState initialState) : super(initialState) {
    on<VideoChatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoChatInitialEvent event,
    Emitter<VideoChatState> emit,
  ) async {}
}
