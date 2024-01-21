import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/single_post_screen/models/single_post_model.dart';
part 'single_post_event.dart';
part 'single_post_state.dart';

class SinglePostBloc extends Bloc<SinglePostEvent, SinglePostState> {
  SinglePostBloc(SinglePostState initialState) : super(initialState) {
    on<SinglePostInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SinglePostInitialEvent event,
    Emitter<SinglePostState> emit,
  ) async {}
}
