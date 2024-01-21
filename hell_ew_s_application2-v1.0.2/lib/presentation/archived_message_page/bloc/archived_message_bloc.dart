import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listavatar_item_model.dart';
import 'package:hell_ew_s_application2/presentation/archived_message_page/models/archived_message_model.dart';
part 'archived_message_event.dart';
part 'archived_message_state.dart';

class ArchivedMessageBloc
    extends Bloc<ArchivedMessageEvent, ArchivedMessageState> {
  ArchivedMessageBloc(ArchivedMessageState initialState) : super(initialState) {
    on<ArchivedMessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArchivedMessageInitialEvent event,
    Emitter<ArchivedMessageState> emit,
  ) async {
    emit(state.copyWith(
        archivedMessageModelObj: state.archivedMessageModelObj
            ?.copyWith(listavatarItemList: fillListavatarItemList())));
  }

  List<ListavatarItemModel> fillListavatarItemList() {
    return List.generate(3, (index) => ListavatarItemModel());
  }
}
