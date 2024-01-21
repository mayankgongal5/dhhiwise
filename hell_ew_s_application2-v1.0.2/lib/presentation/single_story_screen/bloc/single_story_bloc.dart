import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/single_story_screen/models/single_story_model.dart';
part 'single_story_event.dart';
part 'single_story_state.dart';

class SingleStoryBloc extends Bloc<SingleStoryEvent, SingleStoryState> {
  SingleStoryBloc(SingleStoryState initialState) : super(initialState) {
    on<SingleStoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleStoryInitialEvent event,
    Emitter<SingleStoryState> emit,
  ) async {
    emit(state.copyWith(
      frameTwoController: TextEditingController(),
    ));
  }
}
