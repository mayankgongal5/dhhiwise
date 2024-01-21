import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/single_video_screen/models/single_video_model.dart';
part 'single_video_event.dart';
part 'single_video_state.dart';

class SingleVideoBloc extends Bloc<SingleVideoEvent, SingleVideoState> {
  SingleVideoBloc(SingleVideoState initialState) : super(initialState) {
    on<SingleVideoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleVideoInitialEvent event,
    Emitter<SingleVideoState> emit,
  ) async {}
}
